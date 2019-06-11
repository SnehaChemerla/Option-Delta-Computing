function put = BlackScholes(S0,K,r,T,sigma,NRepl)
x = (r - 0.5*sigma^2)*T;
y = sigma * sqrt(T);
discounted_payoff = exp(-r*T)*max(0,K-S0*exp(x+y*randn(NRepl,1)));
put = mean(discounted_payoff);