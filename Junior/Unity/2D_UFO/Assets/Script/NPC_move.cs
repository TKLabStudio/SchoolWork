using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class NPC_move : MonoBehaviour
{
    public Transform[] waypoints;
    public float speed;
    int cur = 0;
    public GameObject R2_object;
    public Slider healthBarSlider;
    public static int score = 0;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
         R2_object.GetComponent<Animator>().SetBool("burning", false);

        if (transform.position != waypoints[cur].position)
        {
            Vector2 p = Vector2.MoveTowards(transform.position, waypoints[cur].position, speed);
            GetComponent<Rigidbody2D>().MovePosition(p);
        }
        // Waypoint reached, select next one
        else cur = (cur + 1) % waypoints.Length;
    }

    void OnTriggerEnter2D(Collider2D co)
    {
        if ((co.tag == "R2") && (healthBarSlider.value > 0))
        {
            R2_object.GetComponent<Animator>().SetBool("burning", true);
            healthBarSlider.value = healthBarSlider.value - 0.3f;
        }

        if (healthBarSlider.value <= 0)
        {
            SceneManager.LoadScene("GameOver");
        }
    }
}
