using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class R2_control : MonoBehaviour {
    private Rigidbody2D R2_rigidbody2D;
    public GameObject X_ray;

	// Use this for initialization
	void Start () {
        R2_rigidbody2D = GetComponent<Rigidbody2D>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {

        if (Input.GetKey(KeyCode.Space))
        {
            Vector3 pos = gameObject.transform.position + new Vector3(0, -0.1f, 0);
            Instantiate(X_ray, pos, gameObject.transform.rotation);
            sound_manager.playSound3();
            }

        float input_V = Input.GetAxis("Vertical");
        Vector2 velocity = new Vector2(0, input_V * 5f);
        R2_rigidbody2D.MovePosition(R2_rigidbody2D.position + velocity * Time.fixedDeltaTime);
	}
}
