ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP4()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      GC_431 = (3.000000D+00*MDL_CHDD*MDL_COMPLEXI*MDL_LAM
     $ *MDL_VEVHAT__EXP__3)/(2.000000D+00*MDL_LAMBDASMEFT__EXP__2)
      GC_432 = (6.000000D+00*MDL_CHL3*MDL_COMPLEXI*MDL_LAM
     $ *MDL_VEVHAT__EXP__3)/MDL_LAMBDASMEFT__EXP__2
      GC_433 = (-3.000000D+00*MDL_CLL1*MDL_COMPLEXI*MDL_LAM
     $ *MDL_VEVHAT__EXP__3)/MDL_LAMBDASMEFT__EXP__2
      GC_435 = (MDL_CHBOX*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(2.000000D+00*MDL_CTH__EXP__2
     $ *MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2)
      GC_436 = (-2.000000D+00*MDL_CHWB*MDL_COMPLEXI*MDL_VEVHAT)
     $ /MDL_LAMBDASMEFT__EXP__2+(4.000000D+00*MDL_CHWB*MDL_COMPLEXI
     $ *MDL_STH__EXP__2*MDL_VEVHAT)/MDL_LAMBDASMEFT__EXP__2
      GC_437 = (-2.000000D+00*MDL_CHWBTIL*MDL_COMPLEXI*MDL_VEVHAT)
     $ /MDL_LAMBDASMEFT__EXP__2+(4.000000D+00*MDL_CHWBTIL*MDL_COMPLEXI
     $ *MDL_STH__EXP__2*MDL_VEVHAT)/MDL_LAMBDASMEFT__EXP__2
      GC_438 = (4.000000D+00*MDL_CHWB*MDL_CTH*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT)/(MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D
     $ +00*MDL_STH__EXP__2))-(8.000000D+00*MDL_CHWB*MDL_CTH
     $ *MDL_COMPLEXI*MDL_STH__EXP__3*MDL_VEVHAT)
     $ /(MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_464 = (3.000000D+00*MDL_CHDD*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(4.000000D+00*MDL_CTH__EXP__2
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))-(3.000000D+00*MDL_CHDD*MDL_EE__EXP__2
     $ *MDL_COMPLEXI*MDL_VEVHAT__EXP__3)/(8.000000D+00*MDL_CTH__EXP__2
     $ *MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))+(MDL_CHDD*MDL_CTH__EXP__2
     $ *MDL_EE__EXP__2*MDL_COMPLEXI*MDL_VEVHAT__EXP__3)/(4.000000D+00
     $ *MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))-(MDL_CHDD*MDL_EE__EXP__2
     $ *MDL_COMPLEXI*MDL_STH__EXP__2*MDL_VEVHAT__EXP__3)/(4.000000D+00
     $ *MDL_CTH__EXP__2*MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))
      GC_465 = (MDL_CHL3*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(MDL_CTH__EXP__2*MDL_LAMBDASMEFT__EXP__2*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))-(MDL_CHL3
     $ *MDL_EE__EXP__2*MDL_COMPLEXI*MDL_VEVHAT__EXP__3)/(2.000000D+00
     $ *MDL_CTH__EXP__2*MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))+(MDL_CHL3
     $ *MDL_CTH__EXP__2*MDL_EE__EXP__2*MDL_COMPLEXI*MDL_VEVHAT__EXP__3)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))-(MDL_CHL3*MDL_EE__EXP__2
     $ *MDL_COMPLEXI*MDL_STH__EXP__2*MDL_VEVHAT__EXP__3)
     $ /(MDL_CTH__EXP__2*MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))
      GC_466 = -(MDL_CLL1*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(2.000000D+00*MDL_CTH__EXP__2
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))+(MDL_CLL1*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(4.000000D+00*MDL_CTH__EXP__2
     $ *MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))-(MDL_CLL1*MDL_CTH__EXP__2
     $ *MDL_EE__EXP__2*MDL_COMPLEXI*MDL_VEVHAT__EXP__3)/(2.000000D+00
     $ *MDL_LAMBDASMEFT__EXP__2*MDL_STH__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))+(MDL_CLL1*MDL_EE__EXP__2
     $ *MDL_COMPLEXI*MDL_STH__EXP__2*MDL_VEVHAT__EXP__3)/(2.000000D+00
     $ *MDL_CTH__EXP__2*MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00
     $ +2.000000D+00*MDL_STH__EXP__2))
      GC_467 = -((MDL_CHWB*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__3)/(MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2)))+(MDL_CHWB
     $ *MDL_CTH__EXP__3*MDL_EE__EXP__2*MDL_COMPLEXI*MDL_VEVHAT__EXP__3)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_STH*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))+(2.000000D+00*MDL_CHWB*MDL_EE__EXP__2
     $ *MDL_COMPLEXI*MDL_STH*MDL_VEVHAT__EXP__3)/(MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))-(MDL_CHWB*MDL_EE__EXP__2*MDL_COMPLEXI
     $ *MDL_STH__EXP__3*MDL_VEVHAT__EXP__3)/(MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_468 = -((MDL_COMPLEXI*MDL_YB)/MDL_SQRT__2)
      GC_476 = -((MDL_CDBIM*MDL_CTH*MDL_YB)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2))
      GC_477 = (MDL_CDBRE*MDL_CTH*MDL_COMPLEXI*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_478 = (MDL_CDWIM*MDL_CTH*MDL_YB)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2)
      GC_479 = -((MDL_CDWRE*MDL_CTH*MDL_COMPLEXI*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_491 = (MDL_CDBIM*MDL_STH*MDL_YB)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2)
      GC_492 = -((MDL_CDBRE*MDL_COMPLEXI*MDL_STH*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_493 = (MDL_CDWIM*MDL_STH*MDL_YB)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2)
      GC_494 = -((MDL_CDWRE*MDL_COMPLEXI*MDL_STH*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_497 = (-3.000000D+00*MDL_CDHIM*MDL_VEVHAT*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_498 = (3.000000D+00*MDL_CDHRE*MDL_COMPLEXI*MDL_VEVHAT*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_502 = -((MDL_CDBIM*MDL_CTH*MDL_VEVHAT*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_503 = (MDL_CDBRE*MDL_CTH*MDL_COMPLEXI*MDL_VEVHAT*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_504 = (MDL_CDWIM*MDL_CTH*MDL_VEVHAT*MDL_YB)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      END
