.class public Lcom/tencent/bugly/beta/global/b;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/tencent/bugly/beta/global/b;->a:I

    .line 43
    iput-object p2, p0, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    .line 49
    :try_start_0
    iget v0, v1, Lcom/tencent/bugly/beta/global/b;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 141
    :pswitch_0
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/e;

    .line 143
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/e;->a()V

    goto/16 :goto_2

    .line 128
    :pswitch_1
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/e;

    .line 135
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 136
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 120
    :pswitch_2
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 121
    iget-object v2, v0, Lcom/tencent/bugly/beta/ui/h;->s:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, v0, Lcom/tencent/bugly/beta/ui/h;->s:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/h;->a()V

    goto/16 :goto_2

    .line 111
    :pswitch_3
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 112
    iget-object v2, v0, Lcom/tencent/bugly/beta/ui/h;->q:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 113
    sget-object v3, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->stop()V

    .line 115
    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto/16 :goto_2

    .line 72
    :pswitch_4
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 74
    iget-object v3, v0, Lcom/tencent/bugly/beta/ui/h;->q:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 75
    iget-object v4, v0, Lcom/tencent/bugly/beta/ui/h;->p:Lcom/tencent/bugly/proguard/y;

    .line 77
    invoke-static {v3}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 78
    iget-object v5, v0, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    .line 79
    iget-object v5, v0, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v2, :cond_2

    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 83
    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 82
    invoke-static {v5, v7, v8}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    sget-object v2, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v3, Lcom/tencent/bugly/proguard/w;

    const-string v8, "install"

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    iget-object v14, v4, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v15, v4, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v5, v4, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v17, 0x0

    move-object v7, v3

    move/from16 v16, v5

    invoke-direct/range {v7 .. v17}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 86
    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto :goto_1

    .line 91
    :cond_2
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4

    if-ne v5, v6, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto :goto_1

    .line 96
    :cond_4
    :goto_0
    new-instance v5, Lcom/tencent/bugly/beta/ui/f;

    invoke-direct {v5}, Lcom/tencent/bugly/beta/ui/f;-><init>()V

    .line 97
    iput-object v3, v5, Lcom/tencent/bugly/beta/ui/f;->n:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 98
    invoke-static {v5, v2}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;Z)V

    .line 104
    :goto_1
    iget-byte v2, v4, Lcom/tencent/bugly/proguard/y;->g:B

    if-eq v2, v6, :cond_6

    .line 105
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/h;->a()V

    goto :goto_2

    .line 64
    :pswitch_5
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    .line 67
    :cond_5
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/a;->a()V

    goto :goto_2

    .line 59
    :pswitch_6
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/a;->a()V

    goto :goto_2

    .line 51
    :pswitch_7
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 52
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/b;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "BetaAct closed by empty view"

    .line 53
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
