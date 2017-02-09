package com.app.anshul.papers_library.Adapters;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.app.anshul.papers_library.R;

import org.w3c.dom.Text;

import java.util.ArrayList;

/**
 * Created by anshul on 9/2/17.
 */

public class paperListAdapter extends RecyclerView.Adapter<paperListAdapter.paperListViewHolder> {

    ArrayList<String> subjectList = new ArrayList<String>();
    ArrayList<String> examList = new ArrayList<String>();
    ArrayList<String> remarkList = new ArrayList<String>();
    ArrayList<String> locationList = new ArrayList<String>();
    String year;

    public paperListAdapter(ArrayList<String> subjectList, ArrayList<String> examList, ArrayList<String> remarkList, ArrayList<String> locationList,String yearSelected) {
        this.subjectList = subjectList;
        this.examList = examList;
        this.remarkList = remarkList;
        this.locationList = locationList;
        year = yearSelected;
    }

    @Override
    public int getItemCount() {
        return (subjectList.size());
    }

    @Override
    public void onBindViewHolder(paperListViewHolder paperListViewHolder, int i) {
        String subjectText = subjectList.get(i);
        paperListViewHolder.subjectView.setText(subjectText);
        String examText = examList.get(i);
        paperListViewHolder.examView.setText(examText);
        String remarkText = remarkList.get(i);
        paperListViewHolder.remarkView.setText(remarkText);
        paperListViewHolder.examView.setText(year);
    }

    @Override
    public paperListAdapter.paperListViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.
                from(viewGroup.getContext()).
                inflate(R.layout.card_layout_papers, viewGroup, false);

        return new paperListAdapter.paperListViewHolder(itemView);

    }

    public static class paperListViewHolder extends RecyclerView.ViewHolder {

        protected TextView subjectView;
        protected TextView examView;
        protected TextView remarkView;
        protected TextView yearView;

        public paperListViewHolder(View v) {
            super(v);
            subjectView = (TextView) v.findViewById(R.id.subjectText);
            examView = (TextView) v.findViewById(R.id.examText);
            remarkView = (TextView) v.findViewById(R.id.remarkText);
            yearView = (TextView) v.findViewById(R.id.yearText);
        }
    }
}
