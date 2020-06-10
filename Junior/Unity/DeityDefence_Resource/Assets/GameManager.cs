using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public GameObject player;
    public GameObject sensor;
    public GameObject enemy;
    public GameObject enemy_cur_pos;
    public int time = 2;
    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(Spawn());
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetMouseButton(0))
        {
            player.GetComponent<Animator>().SetBool("atk", true);

            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if(sensor.GetComponent<Collider>().Raycast(ray, out hit, 600))
            {
                Debug.DrawRay(ray.origin, hit.point);
                player.transform.LookAt(hit.point);
            }
        }else{
            player.GetComponent<Animator>().SetBool("atk", false);
        }
    }

    IEnumerator Spawn()
    {
        while (true)
        {
            yield return new WaitForSeconds(time);
            Vector3 max = enemy_cur_pos.GetComponent<Collider>().bounds.max;
            Vector3 min = enemy_cur_pos.GetComponent<Collider>().bounds.min;
            float z = Random.Range(min.x, max.z);
            Vector3 arae = new Vector3(min.x, min.y, z);
            GameObject eney = (GameObject)GameObject.Instantiate(enemy, enemy_cur_pos.transform.position, enemy_cur_pos.transform.rotation);
        }
    }
}
