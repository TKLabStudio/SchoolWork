using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_control : MonoBehaviour {

    public int speed;
    public static int score;
    public int max;
    int i;
    Rigidbody2D UFO_rigidbody;
    public GameObject door_object;
	// Use this for initialization
	void Start () {
        UFO_rigidbody = GetComponent<Rigidbody2D>();
        i = 0;
        score = 0;
	}
	
	// Update is called once per frame
	void Update () {
        float input_H = Input.GetAxis("Horizontal");
        float input_V = Input.GetAxis("Vertical");

        if(input_H > 0)
        {
            GetComponent<Animator>().SetBool("turn_right", true);
        }
        if(input_H < 0)
        {
            GetComponent<Animator>().SetBool("turn_right", false);
        }

        Vector2  UFO_move = new Vector2(input_H, input_V);
        UFO_rigidbody.AddForce(UFO_move * speed);
	}
	private void OnCollisionExit2D(Collision2D collision)
	{
        if(collision.gameObject.CompareTag("stone"))
        {
            score = score + 10;
            Debug.Log("Score:" + score);
            sound_manager.playsound();
            Destroy(collision.gameObject);
            i++;
            if(i==max)
            {
                Debug.Log("Bingo!");
                door_object.SetActive(true);
            }
        }
	}

	private void OnTriggerEnter2D(Collider2D collision)
	{
        if(collision.tag == "fruit")
        {
            sound_manager.playsound();
            score = score + 10;
            Debug.Log("Score:" + score);
            Destroy(collision.gameObject);
        }
	}
}
