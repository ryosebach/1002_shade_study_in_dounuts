Shader "Custom/Test2" {
	SubShader {
		Tags {"Queue" = "Geometry+1"}
		ZTest Always
		ZWrite On
		Pass {
		}
	}
}
