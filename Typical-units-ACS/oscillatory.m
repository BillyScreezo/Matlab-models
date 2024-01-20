 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains Oscillatory link model
 %

k = 6;
T2 = 0.5;
T = T2 * 1.2;
e = 0.06;
w = 1:0.1:100;

U = k * (1 - T^2 * w.^2) ./ ((1 - T^2 * w.^2).^2 + (2*e*T*w).^2);
V = -2*k*T*e.*w ./ ((1 - T^2 * w.^2).^2 + (2*e*T*w).^2);

A = k ./ sqrt((1 - T^2 * w.^2).^2 + (2*e*T*w).^2);

w1 = w(w <= 1/T);
w2 = w(w >= 1/T);
ph1 = -atan(2*e*T.*w1 ./ (1 - T.^2.*w1.^2));
ph2 = -pi - atan(2*e*T.*w2 ./ (1 - T.^2.*w2.^2));

L = 20 * log10(k) - 20 * log10(sqrt((1 - T^2 * w.^2).^2 + (2*e*T*w).^2));

figure(1)
subplot(3,1,1), hold on, grid on, title(['T= ', num2str(T), ', e=', num2str(e)])
plot(w, A), xlabel('w'), ylabel('A(w)')

subplot(3,1,2), hold on, grid on, title(['T= ', num2str(T), ', e=', num2str(e)])
plot(20*log10(w), L), xlabel('20lg(w)'), ylabel('L(w)')

subplot(3,1,3), hold on, grid on, title(['T= ', num2str(T), ', e=', num2str(e)])
plot(w1, ph1), plot(w2, ph2), xlabel('w'), ylabel('phi(w)')

figure(2)
subplot(2,1,1), hold on, grid on
plot(w, U), xlabel('w'), ylabel('U(w)')

subplot(2,1,2), hold on, grid on
plot(w, V), xlabel('20lg(w)'), ylabel('V(w)')