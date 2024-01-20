 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains Aperiodic link model
 %

k = 6;
T = 0.5;
w = 1:1:100;

U = k ./ ((T .* w).^2 + 1);
V = -(k .* T .* w) ./ ((T .* w).^2 + 1);

A = k ./ sqrt((T .* w).^2 + 1);
phi = -atan(T .* w);

L = 20 * log10(k) - 20 * log10(sqrt((T .* w).^2 + 1));

figure(1)
subplot(3,1,1), hold on, grid on, title(['T= ', num2str(T)])
plot(w, A), xlabel('w'), ylabel('A(w)')

subplot(3,1,2), hold on, grid on, title(['T= ', num2str(T)])
plot(20*log10(w), L), xlabel('20lg(w)'), ylabel('L(w)')

subplot(3,1,3), hold on, grid on, title(['T= ', num2str(T)])
plot(w, phi), xlabel('w'), ylabel('phi(w)')

figure(2)
subplot(2,1,1), hold on, grid on
plot(w, U), xlabel('w'), ylabel('U(w)')

subplot(2,1,2), hold on, grid on
plot(w, V), xlabel('20lg(w)'), ylabel('V(w)')