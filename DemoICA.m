function DemoICA
%[sig,mixedsig]=demosig();
% figure
% subplot(4,1,1)
% plot(mixedsig(1,:))
% hold on 
% title('Mixed signals')
% hold off
% subplot(4,1,2)
% plot(mixedsig(2,:))
% subplot(4,1,3)
% plot(mixedsig(3,:))
% subplot(4,1,4)
% plot(mixedsig(4,:))

figure
subplot(4,1,1)
plot(sig(1,:))
hold on 
title('Original signals')
hold off
subplot(4,1,2)
plot(sig(2,:))
subplot(4,1,3)
plot(sig(3,:))
subplot(4,1,4)
plot(sig(4,:))

[ic, Out2, Out3] = fastica(mixedsig);
figure
subplot(4,1,1)
plot(ic(1,:))
hold on 
title('Estimated independent components')
hold off
subplot(4,1,2)
plot(ic(2,:))
subplot(4,1,3)
plot(ic(3,:))
subplot(4,1,4)
plot(ic(4,:))

