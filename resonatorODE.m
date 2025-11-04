function [m, k, omega_n] = resonatorODE(rho, A, L, P_0, V_0)
    m = rho * A * L;
    k = (gamma * A^2 * P_0)/V_0;
    omega_n = sqrt(k/m);
end