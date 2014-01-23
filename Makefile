all: provision

new:
	ansible-playbook -v -i production common.yml

provision:
	ansible-playbook --ask-sudo-pass -v -i production app.yml

common:
	ansible-playbook --ask-sudo-pass -v -i production common.yml

sys:
	ansible-playbook --ask-sudo-pass -v -i production sys.yml

web:
	ansible-playbook --ask-sudo-pass -v -i production web.yml
