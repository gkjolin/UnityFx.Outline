﻿// Copyright (C) 2019-2020 Alexander Bogarsukov. All rights reserved.
// See the LICENSE.md file in the project root for more information.

// Renders everything with while color.
// Modified version of 'Custom/DrawSimple' shader taken from https://willweissman.wordpress.com/tutorials/shaders/unity-shaderlab-object-outlines/.
Shader "UnityFx/Outline/RenderColor"
{
	SubShader
	{
		Cull Off
		ZWrite Off
		ZTest LEqual
		Lighting Off

		Pass
		{
			HLSLPROGRAM

			#pragma vertex vert_img
			#pragma fragment frag
			#include "UnityCG.cginc"

			half4 frag(): SV_Target
			{
				return half4(1, 1, 1, 1);
			}

			ENDHLSL
		}
	}
}
