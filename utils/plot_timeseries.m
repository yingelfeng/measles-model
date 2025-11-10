function plot_timeseries(t, X, out)
figure; plot(t, X); xlabel('Days'); ylabel('Individuals');
legend('S','E','I','R','Location','best'); title('SEIR states');

figure; plot(t, out.incidence);
xlabel('Days'); ylabel('New infections/day'); title('Incidence');

figure; plot(t, out.R0_inst);
xlabel('Days'); ylabel('R_0(t)'); title('Instantaneous R_0');

figure; plot(t, out.v_fun);
xlabel('Days'); ylabel('v\_fun(t)'); title('Vaccine Coverage');
end
