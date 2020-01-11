.class public Lcom/zhy/m/permission/MPermissions;
.super Ljava/lang/Object;
.source "MPermissions.java"


# static fields
.field private static final SUFFIX:Ljava/lang/String; = "$$PermissionProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs _requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 49
    invoke-static {}, Lcom/zhy/m/permission/Utils;->isOverMarshmallow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    return-void

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/zhy/m/permission/Utils;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/zhy/m/permission/Utils;->findDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 56
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 58
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 60
    check-cast p0, Landroid/app/Activity;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 63
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private static doExecuteFail(Ljava/lang/Object;I)V
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhy/m/permission/PermissionProxy;->denied(Ljava/lang/Object;I)V

    return-void
.end method

.method private static doExecuteSuccess(Ljava/lang/Object;I)V
    .locals 1

    .line 98
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhy/m/permission/PermissionProxy;->grant(Ljava/lang/Object;I)V

    return-void
.end method

.method private static findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;
    .locals 4

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$PermissionProxy"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/m/permission/PermissionProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 92
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$$PermissionProxy"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "can not find %s , something when compiler."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 110
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;[I)V
    .locals 0

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/zhy/m/permission/MPermissions;->_requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/zhy/m/permission/MPermissions;->_requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method private static requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 123
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 125
    aget v2, p3, v1

    if-eqz v2, :cond_0

    .line 127
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 132
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteFail(Ljava/lang/Object;I)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 3

    .line 35
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    .line 36
    invoke-interface {v0, p2}, Lcom/zhy/m/permission/PermissionProxy;->needShowRationale(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 37
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    invoke-interface {v0, p0, p2}, Lcom/zhy/m/permission/PermissionProxy;->rationale(Ljava/lang/Object;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method
