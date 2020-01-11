.class public Lcom/tencent/bugly/beta/download/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/beta/download/DownloadListener;


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    .line 48
    iput-object p2, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 67
    :try_start_0
    iget v2, v1, Lcom/tencent/bugly/beta/download/a;->a:I

    const/4 v3, 0x0

    const/16 v4, 0x820

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 177
    :pswitch_0
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v6

    check-cast v2, Lcom/tencent/bugly/proguard/q;

    .line 178
    iget-object v8, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    .line 179
    iget-object v9, v2, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v9, :cond_5

    .line 180
    iget-object v10, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-nez v10, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v10, "patch download success !!!"

    .line 184
    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v10

    .line 187
    iget-object v11, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v11, v11, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v11, v11, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    const-string v12, "SHA"

    invoke-static {v10, v11, v12}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 191
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    .line 192
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    invoke-static {v10, v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    .line 193
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_1

    const-string v0, "delete temp file"

    .line 198
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 199
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    :cond_1
    const-string v0, "UPLOAD_PATCH_RESULT"

    .line 201
    invoke-static {v0, v6}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 203
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v3, v3, Lcom/tencent/bugly/beta/global/e;->V:Z

    .line 203
    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadSuccess(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "copy file failed"

    .line 207
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 208
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    const-string v2, "copy file failure."

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadFailure(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 210
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v5, :cond_4

    .line 211
    iget-object v4, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 212
    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 213
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v4, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    .line 213
    invoke-interface {v0, v4, v5, v3, v7}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 217
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v6}, Lcom/tencent/bugly/beta/download/DownloadTask;->setNeededNotify(Z)V

    .line 218
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 219
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v0}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 220
    iget-object v0, v2, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto/16 :goto_4

    .line 222
    :cond_4
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v2, "file sha1 verify fail"

    .line 223
    invoke-virtual {v1, v0, v4, v2}, Lcom/tencent/bugly/beta/download/a;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    .line 225
    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 228
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    const-string v2, "retry download patch too many times."

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadFailure(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    return-void

    .line 108
    :pswitch_1
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v6

    check-cast v2, Lcom/tencent/bugly/beta/upgrade/c;

    .line 109
    iget-object v8, v2, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v8, :cond_c

    .line 110
    iget-object v9, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-nez v9, :cond_6

    goto/16 :goto_1

    .line 115
    :cond_6
    iget-object v9, v2, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v9, :cond_7

    .line 116
    new-instance v9, Lcom/tencent/bugly/beta/global/d;

    const/16 v10, 0x12

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v13, v2, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v13, v12, v6

    .line 117
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v7

    iget-boolean v11, v2, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v12, v5

    invoke-direct {v9, v10, v12}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 116
    invoke-static {v9}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    :cond_7
    const-string v9, "apk download completed"

    .line 120
    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 123
    sget-object v9, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v15, Lcom/tencent/bugly/proguard/w;

    const-string v11, "download"

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v16

    iget-object v10, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v3, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v4, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v4, v4, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v20, 0x0

    move-object/from16 v18, v10

    move-object v10, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v10 .. v20}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 123
    invoke-virtual {v9, v5}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 130
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v3, v3, Lcom/tencent/bugly/beta/global/e;->ad:Z

    if-nez v3, :cond_8

    return-void

    .line 134
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    .line 135
    iget-object v4, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Integer;

    .line 137
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    iget-object v9, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    invoke-static {v5, v3, v9}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 139
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    .line 142
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v10, "install"

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    iget-object v3, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v4, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v5, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v5, v5, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v19, 0x0

    move-object v9, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v9 .. v19}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 142
    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_4

    .line 146
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_b

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_a

    .line 149
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v2, "\u5b89\u88c5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684App\u662f\u5426\u517c\u5bb97.0\u8bbe\u5907"

    const/16 v3, 0x820

    .line 150
    invoke-virtual {v1, v0, v3, v2}, Lcom/tencent/bugly/beta/download/a;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    .line 152
    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    return-void

    .line 155
    :cond_a
    iget-object v3, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 156
    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 157
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v3, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 159
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const/4 v6, 0x0

    .line 157
    invoke-interface {v0, v3, v4, v6, v5}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 162
    sget-object v0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    iget-object v3, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 164
    iget-object v0, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 165
    iget-object v0, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v0}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 166
    iget-object v0, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto/16 :goto_4

    .line 168
    :cond_b
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v2, "file md5 verify fail"

    const/16 v3, 0x820

    .line 169
    invoke-virtual {v1, v0, v3, v2}, Lcom/tencent/bugly/beta/download/a;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    .line 171
    invoke-virtual {v0, v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    goto/16 :goto_4

    :cond_c
    :goto_1
    return-void

    .line 102
    :pswitch_2
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v6

    check-cast v2, Lcom/tencent/bugly/beta/ui/h;

    .line 103
    invoke-virtual {v2, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto/16 :goto_4

    .line 69
    :pswitch_3
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v2, v0, v6

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v7

    check-cast v0, Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 72
    monitor-exit v2

    return-void

    .line 75
    :cond_d
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_e
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 76
    invoke-virtual {v5}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v7, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has completed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/an;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v4, v3, :cond_10

    .line 83
    monitor-exit v2

    return-void

    .line 86
    :cond_10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v5}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 88
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v5}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 89
    sget-object v5, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 90
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v7}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v5, v4, v7}, Lcom/tencent/bugly/beta/global/ResBean;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_12
    const-string v0, "rb.bch"

    .line 93
    sget-object v3, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 94
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Lcom/tencent/bugly/beta/global/f;

    .line 95
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/f;->a()V

    .line 97
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/f;->b()V

    .line 98
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 245
    :try_start_0
    iget v3, v1, Lcom/tencent/bugly/beta/download/a;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 279
    :pswitch_0
    iget-object v3, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v6

    check-cast v3, Lcom/tencent/bugly/proguard/q;

    if-eqz v0, :cond_0

    .line 282
    sget-object v7, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v15, Lcom/tencent/bugly/proguard/w;

    const-string v9, "download"

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v13

    iget-object v0, v3, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v8, v3, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v8, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v3, v3, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v18, 0x0

    move-object/from16 v16, v8

    move-object v8, v15

    move-object v4, v15

    move-object v15, v0

    move/from16 v17, v3

    invoke-direct/range {v8 .. v18}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 283
    invoke-virtual {v7, v4}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    :cond_0
    const-string v0, "hotfix download failed\uff1a(%d)%s"

    .line 290
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_1
    iget-object v3, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v6

    check-cast v3, Lcom/tencent/bugly/beta/upgrade/c;

    if-eqz v0, :cond_1

    .line 266
    sget-object v4, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v15, Lcom/tencent/bugly/proguard/w;

    const-string v8, "download"

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v12

    iget-object v0, v3, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v0, v3, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v3, v3, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v17, 0x0

    move-object v7, v15

    move-object v6, v15

    move-object v15, v0

    move/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 267
    invoke-virtual {v4, v6}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    :cond_1
    const-string v0, "upgrade failed\uff1a(%d)%s"

    .line 273
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/tencent/bugly/proguard/an;->b:Ljava/lang/String;

    const-string v2, "download fail, please try later"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v2, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/h;

    .line 258
    invoke-virtual {v2, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/global/f;

    .line 250
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/f;->a()V

    .line 252
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/f;->b()V

    .line 253
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 299
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 2

    .line 53
    iget v0, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 56
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    :goto_0
    return-void
.end method
