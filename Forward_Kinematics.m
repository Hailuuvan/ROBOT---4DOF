function P = Forward_Kinematics(t1, t2, t3, t4)
    %% Thông số hệ thống
    L1 = 81; L2 = 113; L3 = 90; L4 = 59;
    %% Chuyển đổi góc sang radian
%     theta1 = sym(t1*pi/180);
%     theta2 = sym(t2*pi/180);
%     theta3 = sym(t3*pi/180);
%     theta4 = sym(t4*pi/180);
    
    %% The individual transformation:
    T01 = TransMatrix(0, 0, 150, t1);
    T12 = TransMatrix(-90, L1, 0, t2);
    T23 = TransMatrix(0, L2, 0, t3);
    T34 = TransMatrix(0, L3, 0, t4);
    T45 = TransMatrix(0, L4, 0, 0);
    
    %% The transformation matrix between frame (0) and frame (4)
    T04 = (T01 * T12 * T23 * T34 * T45);
    
    %% Position of end-effector
    Px = T04(1,4);
    Py = T04(2,4);
    Pz = T04(3,4);
    P = [double(Px) double(Py) double(Pz)];
end
