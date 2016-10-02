Shader "Custom/Test1" {
	SubShader {
		Pass {
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				struct v2f {
					float4 svPos : SV_POSITION;
					float3 normal : NORMAL;
				};

				v2f vert(float4 pos : POSITION, float3 normal : NORMAL) {
					v2f OUT;
					OUT.svPos = mul(UNITY_MATRIX_MVP, pos);
					OUT.normal = normal;
					return OUT;
				}

				float4 frag (v2f input) : SV_TARGET {
					return float4(input.normal * 0.5 + 0.5, 1);
				}
			ENDCG
		}
	}
}