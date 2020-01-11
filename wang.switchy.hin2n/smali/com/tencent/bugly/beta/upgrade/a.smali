.class public Lcom/tencent/bugly/beta/upgrade/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/aj;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/Object;

.field public d:Z


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/Object;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    .line 47
    iput p1, p0, Lcom/tencent/bugly/beta/upgrade/a;->a:I

    .line 48
    iput p2, p0, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    .line 49
    iput-object p3, p0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(ILcom/tencent/bugly/proguard/be;JJZLjava/lang/String;)V
    .locals 12

    move-object v1, p0

    move-object v0, p2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    if-nez v3, :cond_d

    iget v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    move v4, p1

    if-ne v4, v3, :cond_d

    const-string v3, "upload %s:[%d] [sended %d] [recevied %d]"

    const/4 v5, 0x4

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p7, :cond_0

    const-string v6, "succ"

    goto :goto_0

    :cond_0
    const-string v6, "err"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v5, v8

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v5, v9

    .line 61
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 64
    iget v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->a:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 130
    :pswitch_0
    iget-object v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    aget-object v3, v3, v7

    check-cast v3, Lcom/tencent/bugly/proguard/x;

    .line 132
    iget v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x323

    if-eq v3, v4, :cond_1

    .line 133
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p7, :cond_c

    if-eqz v0, :cond_2

    .line 139
    :try_start_1
    iget-object v0, v0, Lcom/tencent/bugly/proguard/be;->c:[B

    const-class v2, Lcom/tencent/bugly/proguard/aa;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/ah;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/aa;

    if-eqz v0, :cond_2

    .line 141
    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/aa;->a:Lcom/tencent/bugly/proguard/bg;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/bg;)V

    .line 144
    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->b()I

    goto/16 :goto_6

    .line 67
    :pswitch_1
    iget-object v3, v1, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 68
    iget-object v4, v1, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 69
    iget v5, v1, Lcom/tencent/bugly/beta/upgrade/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v10, 0x324

    if-eq v5, v10, :cond_3

    .line 70
    monitor-exit p0

    return-void

    :cond_3
    const/4 v5, 0x0

    if-eqz p7, :cond_4

    if-eqz v0, :cond_4

    .line 77
    :try_start_2
    iget-object v0, v0, Lcom/tencent/bugly/proguard/be;->c:[B

    .line 78
    const-class v10, Lcom/tencent/bugly/proguard/aa;

    .line 79
    invoke-static {v0, v10}, Lcom/tencent/bugly/proguard/ah;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/aa;

    if-eqz v0, :cond_4

    .line 82
    iget-object v10, v0, Lcom/tencent/bugly/proguard/aa;->a:Lcom/tencent/bugly/proguard/bg;

    .line 83
    iget-object v0, v0, Lcom/tencent/bugly/proguard/aa;->b:Lcom/tencent/bugly/proguard/y;

    goto :goto_1

    :cond_4
    move-object v0, v5

    move-object v10, v0

    .line 86
    :goto_1
    sget-object v11, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    invoke-virtual {v11, v10}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/bg;)V

    .line 87
    iget-object v10, v1, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    aget-object v10, v10, v8

    check-cast v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_5

    move-object v5, v0

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    .line 88
    iget-object v5, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    :cond_6
    :goto_2
    const/4 v10, -0x1

    if-eqz v5, :cond_a

    .line 91
    iget v5, v5, Lcom/tencent/bugly/proguard/y;->p:I

    packed-switch v5, :pswitch_data_1

    const-string v0, "unexpected updatetype"

    goto :goto_4

    .line 100
    :pswitch_2
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput v9, v5, Lcom/tencent/bugly/beta/global/e;->ae:I

    .line 104
    sget-object v5, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    if-eqz p7, :cond_7

    const/4 v10, 0x0

    :cond_7
    invoke-virtual {v5, v10, v0, v7}, Lcom/tencent/bugly/proguard/q;->a(ILcom/tencent/bugly/proguard/y;Z)V

    .line 108
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_8

    .line 109
    new-instance v0, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x12

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v5, v5, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v5, v4, v7

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-direct {v0, v2, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 109
    invoke-static {v0}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_c

    if-nez v4, :cond_c

    .line 114
    new-instance v0, Lcom/tencent/bugly/beta/global/d;

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->strToastYourAreTheLatestVersion:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 93
    :pswitch_3
    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-eqz p7, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, -0x1

    :goto_3
    move-object p1, v5

    move p2, v3

    move p3, v4

    move/from16 p4, v7

    move-object/from16 p5, v0

    move-object/from16 p6, p8

    invoke-virtual/range {p1 .. p6}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput v6, v0, Lcom/tencent/bugly/beta/global/e;->ae:I

    goto :goto_6

    .line 119
    :goto_4
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 122
    :cond_a
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-eqz p7, :cond_b

    goto :goto_5

    :cond_b
    const/4 v7, -0x1

    :goto_5
    const/4 v2, 0x0

    move-object p1, v0

    move p2, v3

    move p3, v4

    move/from16 p4, v7

    move-object/from16 p5, v2

    move-object/from16 p6, p8

    invoke-virtual/range {p1 .. p6}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    .line 151
    :cond_c
    :goto_6
    :pswitch_4
    iput-boolean v6, v1, Lcom/tencent/bugly/beta/upgrade/a;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 155
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :cond_d
    :goto_7
    monitor-exit p0

    return-void

    .line 59
    :goto_8
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
