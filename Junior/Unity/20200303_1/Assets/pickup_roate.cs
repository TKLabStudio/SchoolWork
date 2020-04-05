using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickup_roate : MonoBehaviour {
    public int rotate_speed;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(new Vector3(0, 0, rotate_speed) * Time.deltaTime);
	}
}
