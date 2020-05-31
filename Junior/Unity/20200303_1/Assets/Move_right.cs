using UnityEngine;
using System.Collections;

public class Move_right : MonoBehaviour
{
    private Animator R2_animator;
    bool R2_turn = true;
    // Use this for initialization
    void Start()
    {
        R2_animator = GameObject.Find("R2").GetComponent<Animator>();
        if(R2_animator.GetBool("turn_right"))
        {
            R2_turn = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if(R2_turn)
        transform.position = transform.position + new Vector3(10.24f / 20 * Time.deltaTime * 10, 0, 0);
        else
            transform.position = transform.position - new Vector3(10.24f / 20 * Time.deltaTime * 10, 0, 0);

    }
}