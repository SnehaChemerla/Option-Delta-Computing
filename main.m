%Pricing an European put option using Montecarlo Simulation volatilty 20%.
% The risk free rate is 1%.
% The option strike is $90.
% The option maturity is 1 year
put=BlackScholes(100,90,0.01,1,0.2,10000)
fprintf('%f',put)
put2=BlackScholes(101,90,0.01,1,0.2,10000)
fprintf('%f',put2)
opt_delta=(put2-put)/(101-100)
fprintf('%f',opt_delta)
%To compute option price using common random numbers%
s = RandStream('mrg32k3a');
RandStream.setGlobalStream(s);
savedState = s.State;
putCR=BlackScholes(100,90,0.01,1,0.2,10000)
fprintf('%f',putCR)
s.State=savedState%This ensures that the random numbers generated during both the simulations are common%
putCR2=BlackScholes(101,90,0.01,1,0.2,10000)
fprintf('%f',putCR2)
opt_deltaCR=(putCR2-putCR)/(101-100)
fprintf('%f',opt_deltaCR)