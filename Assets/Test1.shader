Shader "Custom/Test1" {

	Properties {
		_MainTex("texture",2D) = "White"
	}

	SubShader {
		Pass {
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				uniform sampler2D _MainTex;

				struct v2f {
					float4 svPos : SV_POSITION;
					float2 uv : TEXCOORD0;
				};

				v2f vert(float4 pos : POSITION, float2 uv : TEXCOORD0) {
					v2f OUT;
					OUT.svPos = mul(UNITY_MATRIX_MVP, pos);
					OUT.uv = uv;
					return OUT;
				}

				//ここでラスタライズが入る
				//fragにはvertのOUTがラスタライズされてinputにわたる。

				float4 frag (v2f input) : SV_TARGET {
					return tex2D(_MainTex, input.uv);
				}
			ENDCG
		}
	}
}