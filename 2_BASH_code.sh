cat /home/hunor/jdsa_final_task/dilans_data.csv | grep 'read' | grep -E 'Reddit|AdWords|SEO' | sed 's/^\(.\{10\}\) /\1;/' > /home/hunor/jdsa_final_task/read_first_visit.csv
cat /home/hunor/jdsa_final_task/dilans_data.csv | grep 'read' | grep -vE 'Reddit|AdWords|SEO' | sed 's/^\(.\{10\}\) /\1;/' > /home/hunor/jdsa_final_task/read_return.csv
cat /home/hunor/jdsa_final_task/dilans_data.csv | grep 'subscribe' | sed 's/^\(.\{10\}\) /\1;/' > /home/hunor/jdsa_final_task/subscribe.csv
cat /home/hunor/jdsa_final_task/dilans_data.csv | grep 'buy' | sed 's/^\(.\{10\}\) /\1;/' > /home/hunor/jdsa_final_task/buy.csv
