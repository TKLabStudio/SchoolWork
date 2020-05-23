using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class X_ray_trigger : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }

    void OnTriggerEnter2D(Collider2D co_target)
    {
        if (co_target.tag == "wall")
        {
            Destroy(gameObject);
        }
        if (co_target.tag == "Monster")
        {
            Destroy(GameObject.Find("Monster"));
        }
        if (gameObject == GameObject.Find("NPC2"))
        {
            Destroy(GameObject.Find("NPC2"));
        }
    }

}