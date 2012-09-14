push.so: push.cpp
	znc-buildmod push.cpp

install: push.so
	scp push.so eatabrick.org:push.so
	ssh eatabrick.org sudo mv /home/alan/push.so /etc/znc/modules/push.so

clean:
	-rm -f push.so
