using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class NPC_move : MonoBehaviour
{
    public Transform[] waypoints;
    public float speed;
    int cur = 0;
    public GameObject R2_object;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        R2_object.GetComponent<Animator>().SetBool("burning", false);

        if(transform.position != waypoints[cur].position)
        {
            Vector2 p = Vector2.MoveTowards(transform.position, waypoints[cur].position, speed);
            GetComponent<Rigidbody2D>().MovePosition(p);
        }
        else
            cur = (cur + 1) % waypoints.Length;
    }

	private void OnTriggerEnter2D(Collider2D collision)
	{
        if(collision.tag == "R2")
        {
            R2_object.GetComponent<Animator>().SetBool("burning", true);
        }
	}
}

