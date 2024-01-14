function [nghiem1, nghiem2] = Inverse_Kinenatics(Px, Py, Pz, t234)
    L1 = 81; L2 = 113; L3 = 90; L4 = 59; d1 = 150;
    
    %% ĐHN
    %% Tính theta1
    t1 = atan2d(Py, Px);

    m = Px*cosd(t1) + Py*sind(t1) - L4*cosd(t234) - L1
    n =  d1 - Pz - L4*sind(t234);

    %% Tính theta3
    c3 = (m^2 + n^2 - L2^2 - L3^2)/(2*L2*L3);
    s3 = sqrt(abs(1 - c3^2));
    t3_1 = atan2d(s3, c3);
    t3_2 = atan2d(-s3, c3);
    
    %% theta 2
      
    tu1 = n * (L3 * cosd(t3_1) + L2) - m * L3 * sind(t3_1);
    mau1 = m * (L3 * cosd(t3_1) + L2) + n * L3 * sind(t3_1);
    t2_1 = atan2d(tu1, mau1);

    tu2 = n * (L3 * cosd(t3_2) + L2) - m * L3 * sind(t3_2);
    mau2 = m * (L3 * cosd(t3_2) + L2) + n * L3 * sind(t3_2);
    t2_2 = atan2d(tu2, mau2);


    %% Tính theta4
    t4_1 = t234 - t3_1 - t2_1;
    t4_2 = t234 - t3_2 - t2_2;

    nghiem1 = [t1 t2_1 t3_1 t4_1];
    nghiem2 = [t1 t2_2 t3_2 t4_2];
end
