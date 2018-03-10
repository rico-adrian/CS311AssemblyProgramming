		segment	.data
a							dw						-28
b							db							32
c							dq							0
							segment	.text
							global	main
main:
				movsx					RBX,					word[a]
				imul									RBX,byte[b]
				mov									[c],RBX
				ret
