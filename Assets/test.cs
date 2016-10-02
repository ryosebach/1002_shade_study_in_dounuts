using UnityEngine;
using System.Collections;

public class test : MonoBehaviour {


	float time1,time2,time3;
	// Use this for initialization
	void Start () {
		time1 = Random.value * 3;
		time2 = Random.value * 4;
		time3 = Random.value * 6;
	}
	
	// Update is called once per frame
	void Update () {
		
		transform.Rotate (new Vector3 (1 * time1, 1 * time2, 1 * time3));
	}
}
