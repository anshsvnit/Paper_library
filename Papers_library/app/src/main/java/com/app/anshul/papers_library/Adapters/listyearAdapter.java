package com.app.anshul.papers_library.Adapters;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.app.anshul.papers_library.R;
import com.app.anshul.papers_library.papersList;

import java.util.ArrayList;

/**
 * Created by anshul on 5/2/17.
 */

public class listyearAdapter extends RecyclerView.Adapter<listyearAdapter.listyearViewHolder> {

    ArrayList<String> years = new ArrayList<String>();
    ArrayList<String> count = new ArrayList<String>();

    public listyearAdapter(ArrayList<String> listYears, ArrayList<String> listCount)  {
        years = listYears;
        count = listCount;
    }

    @Override
    public int getItemCount() {
        return (years.size());
    }

    @Override
    public void onBindViewHolder(listyearViewHolder listyearViewHolder, int i) {

        String yearText = years.get(i);
        listyearViewHolder.yearView.setText(yearText);
        String countPapers = count.get(i);
        listyearViewHolder.countView.setText(countPapers);
    }

    @Override
    public listyearViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.
                from(viewGroup.getContext()).
                inflate(R.layout.card_layout, viewGroup, false);

        return new listyearViewHolder(itemView);
    }

    public static class listyearViewHolder extends RecyclerView.ViewHolder {
        protected TextView yearView;
        protected TextView countView;

        public listyearViewHolder(View v) {
            super(v);
            yearView =  (TextView) v.findViewById(R.id.year);
            countView = (TextView) v.findViewById(R.id.count);
        }
    }
}
