.class public Ltwitter4j/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private final reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Ltwitter4j/JSONTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Ltwitter4j/JSONTokener;->eof:Z

    .line 57
    iput-boolean p1, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    .line 58
    iput-char p1, p0, Ltwitter4j/JSONTokener;->previous:C

    .line 59
    iput p1, p0, Ltwitter4j/JSONTokener;->index:I

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Ltwitter4j/JSONTokener;->character:I

    .line 61
    iput p1, p0, Ltwitter4j/JSONTokener;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget v0, p0, Ltwitter4j/JSONTokener;->index:I

    if-lez v0, :cond_0

    .line 95
    iget v0, p0, Ltwitter4j/JSONTokener;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ltwitter4j/JSONTokener;->index:I

    .line 96
    iget v0, p0, Ltwitter4j/JSONTokener;->character:I

    sub-int/2addr v0, v1

    iput v0, p0, Ltwitter4j/JSONTokener;->character:I

    .line 97
    iput-boolean v1, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Ltwitter4j/JSONTokener;->eof:Z

    return-void

    .line 93
    :cond_0
    new-instance v0, Ltwitter4j/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    .line 116
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    const/4 v0, 0x1

    return v0
.end method

.method public next()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    .line 134
    iget-char v0, p0, Ltwitter4j/JSONTokener;->previous:C

    goto :goto_0

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltwitter4j/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_1

    .line 143
    iput-boolean v2, p0, Ltwitter4j/JSONTokener;->eof:Z

    const/4 v0, 0x0

    .line 147
    :cond_1
    :goto_0
    iget v3, p0, Ltwitter4j/JSONTokener;->index:I

    add-int/2addr v3, v2

    iput v3, p0, Ltwitter4j/JSONTokener;->index:I

    .line 148
    iget-char v3, p0, Ltwitter4j/JSONTokener;->previous:C

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v4, :cond_3

    .line 149
    iget v3, p0, Ltwitter4j/JSONTokener;->line:I

    add-int/2addr v3, v2

    iput v3, p0, Ltwitter4j/JSONTokener;->line:I

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 150
    :goto_1
    iput v1, p0, Ltwitter4j/JSONTokener;->character:I

    goto :goto_2

    :cond_3
    if-ne v0, v5, :cond_4

    .line 152
    iget v3, p0, Ltwitter4j/JSONTokener;->line:I

    add-int/2addr v3, v2

    iput v3, p0, Ltwitter4j/JSONTokener;->line:I

    .line 153
    iput v1, p0, Ltwitter4j/JSONTokener;->character:I

    goto :goto_2

    .line 155
    :cond_4
    iget v1, p0, Ltwitter4j/JSONTokener;->character:I

    add-int/2addr v1, v2

    iput v1, p0, Ltwitter4j/JSONTokener;->character:I

    :goto_2
    int-to-char v0, v0

    .line 157
    iput-char v0, p0, Ltwitter4j/JSONTokener;->previous:C

    .line 158
    iget-char v0, p0, Ltwitter4j/JSONTokener;->previous:C

    return v0

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ltwitter4j/JSONException;

    invoke-direct {v1, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 193
    :cond_0
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 197
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 198
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->end()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Substring bounds error"

    .line 199
    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    .line 203
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 215
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v3, 0xd

    if-eq v1, v3, :cond_7

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 280
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v1

    const/16 v5, 0x22

    if-eq v1, v5, :cond_6

    const/16 v5, 0x27

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_6

    const/16 v4, 0x62

    if-eq v1, v4, :cond_5

    const/16 v4, 0x66

    if-eq v1, v4, :cond_4

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_3

    const/16 v2, 0x72

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    const-string p1, "Illegal escape."

    .line 273
    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/4 v1, 0x4

    .line 264
    invoke-virtual {p0, v1}, Ltwitter4j/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x9

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 244
    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    invoke-static {v0}, Ltwitter4j/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Missing value"

    .line 326
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .line 301
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 302
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    return-object v0

    .line 304
    :cond_3
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 305
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    return-object v0

    .line 299
    :cond_4
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;
    .locals 2

    .line 339
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltwitter4j/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
