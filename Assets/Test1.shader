Shader "Custom/Test1" {

	Properties {
		_CubeColor("Cube Color",COLOR) = (1,1,1,1)
	}

	SubShader {
		Pass {
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				uniform float4 _CubeColor;

				struct v2f {
					float4 svPos : SV_POSITION;
					float4 cubeColor : COLOR;
				};

				v2f vert(float4 pos : POSITION, float3 normal : NORMAL) {
					v2f OUT;
					OUT.svPos = mul(UNITY_MATRIX_MVP, pos);
					OUT.cubeColor.xyz = mul(_Object2World, normal) * 0.5 + 0.5;
					OUT.cubeColor.w = 1.0;
					return OUT;
				}

				float4 frag (v2f input) : SV_TARGET {
					return _CubeColor;
				}
			ENDCG
		}
	}
}