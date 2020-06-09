using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Move_left : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.position = transform.position + new Vector3(-10.24f / 20 * Time.deltaTime * 2, 0, 0);
	}
}
