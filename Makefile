default: dmenu-emoji.sh

dmenu-emoji.sh: script.sh emoji.txt
	@cat script.sh emoji.txt > $@
	@chmod +x $@
	@du -sh $@

emoji.txt: emoji.json parse.sh
	@sh parse.sh < emoji.json > $@

emoji.json:
	@echo "Downloading emoji table from https://github.com/github/gemoji (Emoji Ruby gem)"
	@echo
	@curl https://raw.githubusercontent.com/github/gemoji/master/db/emoji.json > $@
	@echo

.PHONY: update
update: clean default

.PHONY: clean
clean:
	@rm -f emoji.json emoji.txt
