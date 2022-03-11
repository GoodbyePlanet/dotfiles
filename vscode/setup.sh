#!/bin/sh
if command -v code >/dev/null; then
	# ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"

	# from `code --list-extensions`
	modules="
        monokai.theme-monokai-pro-vscode
        ms-python.python
				akamud.vscode-theme-onedark
				andys8.jest-snippets
				anthonypenna.jsfiddle-dark-theme
				apollographql.vscode-apollo
				azemoh.theme-onedark
				christian-kohler.path-intellisense
				CodeAlb.CodeAlb
				CoenraadS.bracket-pair-colorizer
				DavidAnson.vscode-markdownlint
				dbaeumer.vscode-eslint
				DiryoX.Paper-tmTheme
				donjayamanne.githistory
				dracula-theme.theme-dracula
				eamodio.gitlens
				eddyvinck.Internetstorm
				EQuimper.react-native-react-redux
				Equinusocio.vsc-community-material-theme
				Equinusocio.vsc-material-theme
				equinusocio.vsc-material-theme-icons
				esbenp.prettier-vscode
				formulahendry.auto-close-tag
				formulahendry.auto-rename-tag
				gerane.Theme-Array
				gerane.Theme-Github
				GitHub.github-vscode-theme
				humao.rest-client
				IslandOfCode.vtl
				jcbuisson.vue
				jolaleye.horizon-theme-vscode
				jsjlewis96.one-dark-pro-italic-vivid
				k--kato.intellij-idea-keybindings
				kkozee.theme-one-dark-vivid
				koteus.noctis
				kumar-harsh.graphql-for-vscode
				liviuschera.noctis
				mhutchie.git-graph
				mikestead.dotenv
				Mit.Monokai-Polished
				ms-azuretools.vscode-docker
				ms-python.python
				ms-toolsai.jupyter
				ms-vscode.vscode-typescript-tslint-plugin
				ms-vsliveshare.vsliveshare
				msjsdiag.debugger-for-chrome
				NuclleaR.vscode-extension-auto-import
				octref.vetur
				Orta.vscode-jest
				redhat.java
				ritwickdey.create-file-folder
				ritwickdey.LiveServer
				runningcoder.react-snippets
				smockle.xcode-default-theme
				steoates.autoimport
				thenikso.github-plus-theme
				thomaspink.theme-github
				thonymg.Darkplusix
				trinm1709.dracula-theme-from-intellij
				VisualStudioExptTeam.vscodeintellicode
				vscjava.vscode-java-debug
				vscjava.vscode-java-dependency
				vscjava.vscode-java-pack
				vscjava.vscode-java-test
				vscjava.vscode-maven
				vscode-icons-team.vscode-icons
				waderyan.gitblame
				WallabyJs.quokka-vscode
				wayou.vscode-todo-highlight
				xabikos.JavaScriptSnippets
				xyz.local-history
				yzane.markdown-pdf
				zhuangtongfa.material-theme
				Zyst.Egoist-One
        "
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi