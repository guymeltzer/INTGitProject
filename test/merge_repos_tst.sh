set -e

commit_ids=("41c7223")
files=("08vm7FwU.txt" "2JTVGWZk.txt" "b21p9KOx.txt" "eNQUKd4u.txt" "JmbyVIFW.txt" "NNfqsMgg.txt" "q6F9HXIm.txt" "uuze2XeR.txt" "yn8zGcSL.txt" "17mXXGcm.txt" "2xTxOefS.txt" "b4NV2qoo.txt" "F5xCoD8Y.txt" "JNEpnD5K.txt" "NXu8x5io.txt" "QyPgcKxN.txt" "WxdJNXfs.txt" "zwbeTms9.txt" "1a7jUuz2.txt" "8zAhnJvl.txt" "BfEbsOuG.txt" "fUqgXKim.txt" "l0JaOG88.txt" "O0IQfh21.txt" "SrkP9rA6.txt" "X7VFtmRV.txt" "28CAXOBN.txt" "950aPdbx.txt" "cLqrWQw7.txt" "fZ2MOjNf.txt" "L14NtFhe.txt" "O3b4VDgN.txt" "SuNKKBTC.txt" "xpUUyu7l.txt" "293CoKYW.txt" "9jNI8L9r.txt" "dNkfgA3W.txt" "GS4yjVUK.txt" "N6WfxbX8.txt" "PM1q14Ea.txt" "TclGpAHH.txt" "y1IE4zl3.txt" "2jfShj8K.txt" "AQ9eT7PU.txt" "DT0Ndwnv.txt" "iH4ICAzb.txt" "nKLmjeyL.txt" "q5YtTXuC.txt" "Ue2LAqs8.txt" "Y9scFafg.txt")

git checkout main

for commit_id in "${commit_ids[@]}"; do
  if ! git rev-parse --quiet --verify "$commit_id" >/dev/null; then
    echo "Commit ID $commit_id does not exist in the repository, but do exist in GitExerciseOther repo."
    exit 1
  fi
done

for file in "${files[@]}"; do
  if [[ ! -f "../serviceB/serviceB/$file" ]]; then
    echo "File $file does not exist in the serviceB dir."
  fi
done

echo -e "\n\nGood repositories merge!"