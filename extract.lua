-- NOTE: 第一階層に method キーがあるレコードを抽出する
-- see: https://docs.fluentbit.io/manual/pipeline/filters/lua
function validate_key(tag, timestamp, record)
    if record['method'] ~= nil  then
        -- NOTE: code = 2 は元のタイムスタンプを変更しない
        return 2, timestamp, record
    else
        -- NOTE: code = -1 は対象レコード削除
        return -1, timestamp, nil
    end
end
