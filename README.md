
# ROBOT---4DOF
## 1. Thông số robot
![THÔNG SỐ](https://i.imgur.com/GGJHiP2.png)
## 2. Đặt trục 
![Đặt trục](https://i.imgur.com/dAzqvYy.png)
## 3. DH Table
| DH Table | a | alpha | d | theta |
|--------------|-------|------|-------| -------|
| 1 | 0 | 0 |d1 | theta1 |
|2| L1 | -90| 0 | theta2 |
| 3 |  L2 | 0 | 0 | theta3 |
| 4 |  L3 | 0 | 0 | theta4 |
| 5 |  L4 | 0 | 0 | 0 |

## 4. Forward Kinematics
\[{}_{EE}^{0}P=\left[ \begin{matrix}
   {{L}_{1}}-{{L}_{3}}{{c}_{1}}({{s}_{2}}{{s}_{3}}-{{c}_{2}}{{c}_{3}})+{{L}_{2}}{{c}_{1}}{{c}_{2}}+{{L}_{4}}{{c}_{234}}{{c}_{1}}  \\
   {{s}_{1}}({{L}_{3}}{{c}_{23}}+{{L}_{2}}{{c}_{2}})+{{L}_{4}}{{c}_{234}}{{s}_{1}}  \\
   {{d}_{1}}-{{L}_{3}}{{s}_{23}}-{{L}_{2}}{{s}_{2}}-{{L}_{4}}{{s}_{234}}  \\
   1  \\
\end{matrix} \right]\]

![FK](https://i.imgur.com/yhMA6QW.png)

## 5. Inverse Kinematics
**Tính Theta1**

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/4929a8d1-9346-4f06-a207-6c3703241936)

**Tính Theta3**

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/f6a97d12-58c1-4140-8d59-d544800e4a5c)

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/7143abba-b790-4fef-8d17-da3565dc4133)

**Tính Theta2**

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/a331b6a7-e106-4a02-b035-30abdb049310)

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/5d51cde8-976b-4963-a6a2-89a3ec1d290e)

**Tính Theta4**

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/efd8533d-0141-4e2c-9e51-25517b3f23b6)

**Bộ nghiệm 1**


![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/9890b811-d8ca-4eff-b404-1b0675d08bb9)

**Bộ nghiệm 2**

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/beb47364-0e61-4a2c-bc91-d689014748e9)

## 5. Work Space

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/1bea8b07-dbc4-46e1-a26f-618282cc983c)

## 6. GUI

![image](https://github.com/Hailuuvan/ROBOT---4DOF/assets/108060328/b6f7c31d-484f-46f3-bfac-036436d11263)





