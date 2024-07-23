C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjP(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF12_4(F1, F2, F3, COUP, M4, W4,F4)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(6)
      REAL*8 M4
      REAL*8 P4(0:3)
      COMPLEX*16 TMP13
      REAL*8 W4
      COMPLEX*16 DENOM
      F4(1) = +F1(1)+F2(1)+F3(1)
      F4(2) = +F1(2)+F2(2)+F3(2)
      P4(0) = -DBLE(F4(1))
      P4(1) = -DBLE(F4(2))
      P4(2) = -DIMAG(F4(2))
      P4(3) = -DIMAG(F4(1))
      TMP13 = (F1(5)*F2(5)+F1(6)*F2(6))
      DENOM = COUP/(P4(0)**2-P4(1)**2-P4(2)**2-P4(3)**2 - M4 * (M4 -CI
     $ * W4))
      F4(3)= DENOM*CI * TMP13*(F3(5)*(P4(0)-P4(3))+F3(6)*(-P4(1)+CI
     $ *(P4(2))))
      F4(4)= DENOM*(-CI )* TMP13*(F3(5)*(P4(1)+CI*(P4(2)))-F3(6)*(P4(0)
     $ +P4(3)))
      F4(5)= DENOM*CI * F3(5)*TMP13*M4
      F4(6)= DENOM*CI * F3(6)*TMP13*M4
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjP(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF12_2_4(F1, F2, F3, COUP1, COUP2, M4, W4,F4)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(6)
      COMPLEX*16 FTMP(6)
      REAL*8 M4
      REAL*8 P4(0:3)
      REAL*8 W4
      COMPLEX*16 DENOM
      INTEGER*4 I
      CALL FFFF12_4(F1,F2,F3,COUP1,M4,W4,F4)
      CALL FFFF2_4(F1,F2,F3,COUP2,M4,W4,FTMP)
      DO I = 3, 6
        F4(I) = F4(I) + FTMP(I)
      ENDDO
      END

