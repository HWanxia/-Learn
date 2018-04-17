package com.example.dell.learn1;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;


public class MainActivity extends AppCompatActivity {

    ImageButton disagree;
    boolean isChanged = false;

    private List<Preview> previewList = new ArrayList<Preview>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initPreviews(); // 初始化预览数据
        PreviewAdapter adapter = new PreviewAdapter(MainActivity.this, R.layout.preview_item, previewList);
        ListView listView = (ListView) findViewById(R.id.list_view);
        listView.setAdapter(adapter);
    }

    public void change() {
        disagree = (ImageButton)findViewById(R.id.disagree);
        disagree.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                if(v == disagree)
                {
                    if(isChanged){
                        disagree.setImageDrawable(getResources().getDrawable(R.drawable.ic_disagree_checked_24dp));
                    }else
                    {
                        disagree.setImageDrawable(getResources().getDrawable(R.drawable.ic_disagree_black_24dp));
                    }
                    isChanged = !isChanged;

                }
            }
        });
    }

    private void initPreviews() {
        Preview ziruo = new Preview("ziruo", "电饭锅蛋糕", R.drawable.cake);
        previewList.add(ziruo);
        Preview lei = new Preview("蕾SAMA", "夏季驱蚊必备", R.drawable.wen);
        previewList.add(lei);
        Preview yu = new Preview("一只鱼er", "画鱼教程", R.drawable.yu);
        previewList.add(yu);
        Preview xin = new Preview("比哈特", "hiphop", R.drawable.hiphop);
        previewList.add(xin);
    }

    public class Preview{
        private String name;
        private String headline;
        private int imageId;

        public Preview(String name, String headline, int imageId) {
            this.name = name;
            this.headline = headline;
            this.imageId = imageId;
        }

        //用户名
        public String getName() {
            return name;
        }

        //文章标题
        public String getHeadine() {
            return headline;
        }

        //文章预览图
        public int getImageId() {
            return imageId;
        }
    }

}
