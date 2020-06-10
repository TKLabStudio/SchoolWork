using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class player : MonoBehaviour
{
    public GameObject bullet;
    public GameObject firepoint;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void fire()
    {
        GameObject bullte = (GameObject)GameObject.Instantiate(bullet, firepoint.transform.position, firepoint.transform.rotation);
    }
}
