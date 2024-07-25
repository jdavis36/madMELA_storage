C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,2,-2)*Gamma(-1,4,-3)*ProjM(-3,3)*ProjM(-2,1)
C     
      SUBROUTINE FFFF4_2(F1, F3, F4, COUP, M2, W2,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      REAL*8 M2
      REAL*8 P2(0:3)
      REAL*8 W2
      COMPLEX*16 DENOM
      F2(1) = +F1(1)+F3(1)+F4(1)
      F2(2) = +F1(2)+F3(2)+F4(2)
      P2(0) = -DBLE(F2(1))
      P2(1) = -DBLE(F2(2))
      P2(2) = -DIMAG(F2(2))
      P2(3) = -DIMAG(F2(1))
      DENOM = COUP/(P2(0)**2-P2(1)**2-P2(2)**2-P2(3)**2 - M2 * (M2 -CI
     $ * W2))
      F2(3)= DENOM*2D0 * CI*(F4(5)*(F1(3)*F3(4)*(P2(1)-CI*(P2(2)))
     $ +F1(4)*F3(3)*(-P2(1)+CI*(P2(2))))+F4(6)*(F1(3)*F3(4)*(P2(0)
     $ -P2(3))+F1(4)*F3(3)*(-P2(0)+P2(3))))
      F2(4)= DENOM*2D0 * CI*(F4(5)*(F1(3)*-F3(4)*(P2(0)+P2(3))+F1(4)
     $ *F3(3)*(P2(0)+P2(3)))+F4(6)*(F1(3)*-F3(4)*(P2(1)+CI*(P2(2)))
     $ +F1(4)*F3(3)*(P2(1)+CI*(P2(2)))))
      F2(5)= DENOM*2D0 * CI * F4(6)*M2*(F1(3)*F3(4)-F1(4)*F3(3))
      F2(6)= DENOM*2D0 * CI * F4(5)*M2*(-F1(3)*F3(4)+F1(4)*F3(3))
      END


