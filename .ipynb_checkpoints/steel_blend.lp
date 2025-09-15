\* It's a Steel — CPLEX LP format *\
\* Save as: its_a_steel.lp *\

Maximize
  profit: 2200 s_SS + 1200 s_HSLA
        - 400 x_Pig_SS - 400 x_Pig_HSLA
        - 500 x_Scrap_SS - 500 x_Scrap_HSLA
        - 650 x_Wrought_SS - 650 x_Wrought_HSLA
        - 800 x_FerroCr_SS - 800 x_FerroCr_HSLA
        - 1500 x_FerroNi_SS - 1500 x_FerroNi_HSLA

Subject To
  \* Mass balance *\
  MB_SS:   s_SS - x_Pig_SS - x_Scrap_SS - x_Wrought_SS - x_FerroCr_SS - x_FerroNi_SS = 0
  MB_HSLA: s_HSLA - x_Pig_HSLA - x_Scrap_HSLA - x_Wrought_HSLA - x_FerroCr_HSLA - x_FerroNi_HSLA = 0

  \* Availability *\
  Av_Pig:     x_Pig_SS + x_Pig_HSLA <= 500
  Av_Scrap:   x_Scrap_SS + x_Scrap_HSLA <= 50
  Av_Wrought: x_Wrought_SS + x_Wrought_HSLA <= 3000
  Av_FerroCr: x_FerroCr_SS + x_FerroCr_HSLA <= 900
  Av_FerroNi: x_FerroNi_SS + x_FerroNi_HSLA <= 200

  \* Stainless steel (SS) specs *\
  Fe_SS_low:  0.96 x_Pig_SS + 0.91 x_Scrap_SS + 0.9975 x_Wrought_SS + 0.60 x_FerroCr_SS + 0.555 x_FerroNi_SS - 0.69 s_SS >= 0
  Fe_SS_high: 0.96 x_Pig_SS + 0.91 x_Scrap_SS + 0.9975 x_Wrought_SS + 0.60 x_FerroCr_SS + 0.555 x_FerroNi_SS - 0.71 s_SS <= 0
  C_SS_max:   0.035 x_Pig_SS + 0.015 x_Scrap_SS + 0.0005 x_Wrought_SS + 0.005 x_FerroCr_SS + 0.001 x_FerroNi_SS - 0.003 s_SS <= 0
  Cr_SS_low:  0.02 x_Scrap_SS + 0.38 x_FerroCr_SS - 0.18 s_SS >= 0
  Cr_SS_high: 0.02 x_Scrap_SS + 0.38 x_FerroCr_SS - 0.20 s_SS <= 0
  Ni_SS_low:  0.015 x_Scrap_SS + 0.44 x_FerroNi_SS - 0.08 s_SS >= 0
  Ni_SS_high: 0.015 x_Scrap_SS + 0.44 x_FerroNi_SS - 0.10 s_SS <= 0
  Mn_SS_max:  0.005 x_Pig_SS + 0.04 x_Scrap_SS + 0.002 x_Wrought_SS + 0.015 x_FerroCr_SS + 0.005 x_FerroNi_SS - 0.01 s_SS <= 0

  \* High-strength low-alloy (HSLA) specs *\
  Fe_HSLA_low:  0.96 x_Pig_HSLA + 0.91 x_Scrap_HSLA + 0.9975 x_Wrought_HSLA + 0.60 x_FerroCr_HSLA + 0.555 x_FerroNi_HSLA - 0.90 s_HSLA >= 0
  Fe_HSLA_high: 0.96 x_Pig_HSLA + 0.91 x_Scrap_HSLA + 0.9975 x_Wrought_HSLA + 0.60 x_FerroCr_HSLA + 0.555 x_FerroNi_HSLA - 0.95 s_HSLA <= 0
  C_HSLA_low:   0.035 x_Pig_HSLA + 0.015 x_Scrap_HSLA + 0.0005 x_Wrought_HSLA + 0.005 x_FerroCr_HSLA + 0.001 x_FerroNi_HSLA - 0.0005 s_HSLA >= 0
  C_HSLA_high:  0.035 x_Pig_HSLA + 0.015 x_Scrap_HSLA + 0.0005 x_Wrought_HSLA + 0.005 x_FerroCr_HSLA + 0.001 x_FerroNi_HSLA - 0.0025 s_HSLA <= 0
  Cr_HSLA_max:  0.02 x_Scrap_HSLA + 0.38 x_FerroCr_HSLA - 0.03 s_HSLA <= 0
  Ni_HSLA_max:  0.015 x_Scrap_HSLA + 0.44 x_FerroNi_HSLA - 0.03 s_HSLA <= 0
  Mn_HSLA_low:  0.005 x_Pig_HSLA + 0.04 x_Scrap_HSLA + 0.002 x_Wrought_HSLA + 0.015 x_FerroCr_HSLA + 0.005 x_FerroNi_HSLA - 0.005 s_HSLA >= 0
  Mn_HSLA_high: 0.005 x_Pig_HSLA + 0.04 x_Scrap_HSLA + 0.002 x_Wrought_HSLA + 0.015 x_FerroCr_HSLA + 0.005 x_FerroNi_HSLA - 0.02 s_HSLA <= 0

Bounds
  0 <= s_SS
  0 <= s_HSLA
  0 <= x_Pig_SS
  0 <= x_Pig_HSLA
  0 <= x_Scrap_SS
  0 <= x_Scrap_HSLA
  0 <= x_Wrought_SS
  0 <= x_Wrought_HSLA
  0 <= x_FerroCr_SS
  0 <= x_FerroCr_HSLA
  0 <= x_FerroNi_SS
  0 <= x_FerroNi_HSLA

End
