context("Testing the forget() functions")

# Parameters
min <- 0
max <- 100
tmin = .5
tmax = 75
lambda = .5
time = 90
lr = .15
tr = .1
fr = .05

# Memory data
mem <-structure(c(56L, 55L, 61L, 51L, 99L, 51L, 59L, 50L, 51L, 56L,
                  50L, 53L, 54L, 57L, 58L),
                .Dim = c(3L, 5L))
thresh <- structure(c(56L, 46L, 46L, 50L, 98L, 02L, 43L, 52L, 56L, 49L,
                      51L, 48L, 47L, 51L, 54L),
                    .Dim = c(3L, 5L))

mem_dec <- structure(c(0.615723615968426, 0.589972537391328, 0.467912515995964,
                       0.522620685556245, 0.607614257503363, 0.980055358207064, 0.514484390626524,
                       0.576597597433024, 0.585887959352946, 0.580708899736991, 0.658038268679618,
                       0.562303542618935, 0.646057922583702, 0.002138009703025, 0.628875291380699
), .Dim = c(3L, 5L)) * max

thresh_dec <- structure(c(0.482994295176146, 0.554661452924281, 0.992227641234684,
                          0.556897972078241, 0.485085693043906, 0.558457860883398, 0.454974711341695,
                          0.488205791059824, 0.529774619827727, 0.593478434672639, 0.449333432257201,
                          0.484600716134854, 0.0365049940911, 0.442111441874386, 0.497987068879674
), .Dim = c(3L, 5L)) * max

test_that("(Binomial) All strengths are reduced after forgetting", {

  forgottenStrengths <- mem - forget_binomial(mem = mem, FR = fr)
  expect_true(all( forgottenStrengths <= mem))
  expect_true(!all( forgottenStrengths == mem))

  forgottenStrengths <- mem_dec - forget_beta(mem = mem, FR = fr)
  expect_true(all( forgottenStrengths <= mem_dec))
  expect_true(!all( forgottenStrengths == mem_dec))

  })
