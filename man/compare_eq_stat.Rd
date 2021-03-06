% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphics.r
\encoding{UTF-8}
\name{compare_eq_stat}
\alias{compare_eq_stat}
\title{F一定の場合で平衡状態になったときの統計量をx軸、y軸にプロットして比較する}
\usage{
compare_eq_stat(
  MSYlist,
  x_axis_name = "fmulti",
  y_axis_name = "catch.mean",
  legend.position = "top",
  is_MSY_line = TRUE,
  is.scale = FALSE,
  MSYname = NULL,
  plot_CI80 = FALSE
)
}
\arguments{
\item{MSYlist}{est.MSYの返り値をリストにしたもの; 単独でも可}

\item{x_axis_name}{x軸になにをとるか？("ssb.mean": 親魚の平均資源量, "fmulti": current Fに対する乗数、など)}

\item{y_axis_name}{y軸になにをとるか？("ssb.mean": 親魚の平均資源量, "catch.mean": 平均漁獲量、"rec.mean": 加入量の平均値など） get.statの返り値として出される値（またはMSYの推定結果のtrace内の表）に対応}

\item{MSYname}{凡例につけるMSYのケースの名前。MSYlistと同じ長さにしないとエラーとなる}

\item{plot_CI80}{TRUE or FALSE, 平衡状態における信頼区間も追記する(現状では、縦軸が親魚量・漁獲量・加入尾数のときのみ対応)}
}
\description{
例えば、横軸を平均親魚量(ssb.mean)、縦軸を平均漁獲量(catch.mean)にすると漁獲量曲線が得られる。どの統計量がプロットできるかはest.MSYの返り値res_MSYの$trace以下の名前を参照(names(res_MSY$trace))。
}
\examples{
\dontrun{
data(res_MSY_HSL1)
data(res_MSY_HSL2)
MSY_list <- tibble::lst(res_MSY_HSL1, res_MSY_HSL2)
# 邵ｦ霆ｸ繧呈ｼ∫佐驥上∵ｨｪ霆ｸ繧巽縺ｮ螟ｧ縺阪＆
g1 <- compare_eq_stat(MSY_list,x_axis_name="fmulti",y_axis_name="catch.mean")
# 邵ｦ霆ｸ繧定ｦｪ鬲夐㍼縺ｫ縺吶ｋ
g2 <- compare_eq_stat(MSY_list,x_axis_name="fmulti",y_axis_name="ssb.mean")
# 邵ｦ霆ｸ繧貞刈蜈･驥<8f>
g3 <- compare_eq_stat(MSY_list,x_axis_name="fmulti",y_axis_name="rec.mean")
gridExtra::grid.arrange(g1,g2,g3,ncol=1)

g3.withCI <- compare_eq_stat(MSY_list,x_axis_name="fmulti",y_axis_name="rec.mean",plot_CI80=TRUE)

}

}
