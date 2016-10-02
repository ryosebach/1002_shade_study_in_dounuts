Shader "Custom/Test1" {
	SubShader {
		Pass {
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				float4 vert(float4 pos : POSITION, float4 normal : NORMAL) : SV_POSITION {

					return mul(UNITY_MATRIX_MVP, pos);
//					float4 world = mul(_Object2World, pos);
//					float4 view = mul(UNITY_MATRIX_V, world);
//					float4 projection = mul(UNITY_MATRIX_P, view);
//					return projection;
				}

				float4 frag (float4 screenPos : SV_POSITION) : SV_TARGET {
					return float4(1,1,1,1);
				}
			ENDCG
		}
	}
}