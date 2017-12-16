module.exports = {
	config: {
		uiFontFamily: 'CamingoCode',

		fontFamily: 'CamingoCode',

		fontSize: 12,

		cursorShape: 'BEAM',

		cursorColor: 'rgba(240, 240, 240, 0.5)',

		cursorBlink: false,

		backgroundColor: 'rgba(0, 0, 0, 0.6)',

		foregroundColor: 'rgb(240, 240, 240)',

		borderColor: 'rgb(77, 77, 77)',

		css: '',

		termCSS: '',

		padding: '8px 10px',

		/* dotshare */
		colors: {
			black: '#101010',
			red: '#e84f4f',
			green: '#b8d68c',
			yellow: '#e1aa5d',
			blue: '#7dc1cf',
			magenta: '#9b64fb',
			cyan: '#6d878d',
			white: '#dddddd',
			lightBlack: '#404040',
			lightRed: '#d23d3d',
			lightGreen: '#a0cf5d',
			lightYellow: '#f39d21',
			lightBlue: '#4e9fb1',
			lightMagenta: '#8542ff',
			lightCyan: '#42717b',
			lightWhite: '#dddddd'
		},

		/* neon */
		/* colors: {
			black: '#171717',
			red: '#D81765',
			green: '#97D01A',
			yellow: '#FFA800',
			blue: '#16B1FB',
			magenta: '#FF2491',
			cyan: '#0FDCB6',
			white: '#EBEBEB',
			lightBlack: '#38252C',
			lightRed: '#FF0000',
			lightGreen: '#76B639',
			lightYellow: '#E1A126',
			lightBlue: '#289CD5',
			lightMagenta: '#FF2491',
			lightCyan: '#0A9B81',
			lightWhite: '#F8F8F8'
		}, */

		shell: '/usr/local/bin/bash',

		shellArgs: [ '--login' ],

		env: {},

		bell: 'SOUND',

		paneNavigation: {
			showIndicators: false
		}
	},

	// [@org/]project[#version]
	plugins: [ 'hyperlinks', 'hyper-blink', 'hyper-pane' ],

	localPlugins: []
};
