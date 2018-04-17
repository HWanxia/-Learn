package com.example.dell.learn1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

/**
 * Created by Dell on 2018/4/3.
 */

public class PreviewAdapter extends ArrayAdapter {
    private final int resourceId;

    public PreviewAdapter(Context context, int textViewResourceId, List<MainActivity.Preview> objects) {
        super(context, textViewResourceId, objects);
        resourceId = textViewResourceId;
    }
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        MainActivity.Preview preview = (MainActivity.Preview) getItem(position); // 获取当前项的preview实例
        View view = LayoutInflater.from(getContext()).inflate(resourceId, null);//实例化一个对象

        TextView userName = (TextView) view.findViewById(R.id.user_name);//获取该布局内的用户名
        TextView headline = (TextView) view.findViewById(R.id.headline);//获取该布局内的文本标题
        ImageView Image = (ImageView) view.findViewById(R.id.image);//获取该布局内的图片视图

        userName.setText(preview.getName());//为文本视图设置用户名
        headline.setText(preview.getHeadine());//为文本视图设置文本标题
        Image.setImageResource(preview.getImageId());//为图片视图设置图片资源

        return view;
    }
}
