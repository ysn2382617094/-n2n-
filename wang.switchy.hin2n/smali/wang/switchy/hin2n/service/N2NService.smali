.class public Lwang/switchy/hin2n/service/N2NService;
.super Landroid/net/VpnService;
.source "N2NService.java"


# static fields
.field private static final CMD_ADD_NOTIFICATION:I = 0x1

.field private static final CMD_REMOVE_NOTIFICATION:I = 0x0

.field private static final CMD_UPDATE_NOTIFICATION:I = 0x2

.field public static INSTANCE:Lwang/switchy/hin2n/service/N2NService; = null

.field private static final sNotificationId:I = 0x1


# instance fields
.field private cmd:Lwang/switchy/hin2n/model/EdgeCmd;

.field private mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field private mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 57
    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 58
    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    return-void
.end method

.method private showOrRemoveNotification(I)V
    .locals 8

    const/4 v0, 0x0

    const v1, 0x7f0d0020

    const v2, 0x7f0d005d

    const/high16 v3, 0x8000000

    const v4, 0x7f0c0003

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 223
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v7, Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-static {p0, v5, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 226
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f06002e

    .line 229
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0d0060

    .line 231
    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 239
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 241
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 201
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v7, Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-static {p0, v5, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 204
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0009

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f060030

    .line 207
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0d005f

    .line 209
    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/service/N2NService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 216
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 217
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v0, "notification"

    .line 218
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 220
    :cond_1
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez p1, :cond_2

    const-string p1, "notification"

    .line 196
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/service/N2NService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 198
    :cond_2
    iget-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;
    .locals 1

    .line 184
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 66
    sput-object p0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 139
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    return-void
.end method

.method public onRevoke()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 133
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/ErrorEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/ErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "Setting"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "n2nSettingInfo"

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lwang/switchy/hin2n/model/N2NSettingInfo;

    .line 79
    new-instance v1, Landroid/net/VpnService$Builder;

    invoke-direct {v1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 80
    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getNetmask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lwang/switchy/hin2n/tool/N2nTools;->getIpAddrPrefixLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getNetmask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lwang/switchy/hin2n/tool/N2nTools;->getIpAddrPrefixLength(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lwang/switchy/hin2n/tool/N2nTools;->getRoute(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getNetmask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lwang/switchy/hin2n/tool/N2nTools;->getIpAddrPrefixLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getVersion()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 86
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    iget-object v1, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_1

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/ErrorEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/ErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 100
    :cond_1
    new-instance v1, Lwang/switchy/hin2n/model/EdgeCmd;

    iget-object v3, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log"

    invoke-virtual {p0, v5}, Lwang/switchy/hin2n/service/N2NService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lwang/switchy/hin2n/model/EdgeCmd;-><init>(Lwang/switchy/hin2n/model/N2NSettingInfo;ILjava/lang/String;)V

    iput-object v1, p0, Lwang/switchy/hin2n/service/N2NService;->cmd:Lwang/switchy/hin2n/model/EdgeCmd;

    .line 102
    :try_start_1
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->cmd:Lwang/switchy/hin2n/model/EdgeCmd;

    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->startEdge(Lwang/switchy/hin2n/model/EdgeCmd;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/ErrorEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/ErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/ErrorEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/ErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 109
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 91
    :catch_1
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const-string v1, "Parameter cannot be applied by the operating system."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 88
    :catch_2
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const-string v1, "Parameter is not accepted by the operating system."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public reportEdgeStatus(Lwang/switchy/hin2n/model/EdgeStatus;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 148
    iget-object v0, p1, Lwang/switchy/hin2n/model/EdgeStatus;->runningStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 150
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iget-object v1, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 154
    :cond_0
    sget-object v0, Lwang/switchy/hin2n/service/N2NService$1;->$SwitchMap$wang$switchy$hin2n$model$EdgeStatus$RunningStatus:[I

    iget-object p1, p1, Lwang/switchy/hin2n/model/EdgeStatus;->runningStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    invoke-virtual {p1}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lwang/switchy/hin2n/event/StopEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/StopEvent;-><init>()V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne p1, v1, :cond_1

    .line 175
    invoke-direct {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->showOrRemoveNotification(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lwang/switchy/hin2n/event/StopEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/StopEvent;-><init>()V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne p1, v1, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->showOrRemoveNotification(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 163
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/service/N2NService;->showOrRemoveNotification(I)V

    .line 164
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lwang/switchy/hin2n/event/SupernodeDisconnectEvent;

    invoke-direct {v0}, Lwang/switchy/hin2n/event/SupernodeDisconnectEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lwang/switchy/hin2n/event/StartEvent;

    invoke-direct {v0}, Lwang/switchy/hin2n/event/StartEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 159
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/service/N2NService;->showOrRemoveNotification(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public native startEdge(Lwang/switchy/hin2n/model/EdgeCmd;)Z
.end method

.method public stop()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lwang/switchy/hin2n/service/N2NService;->stopEdge()V

    .line 114
    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mCurrentStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mLastStatus:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lwang/switchy/hin2n/service/N2NService;->showOrRemoveNotification(I)V

    .line 118
    :try_start_0
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lwang/switchy/hin2n/service/N2NService;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/StopEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/StopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 123
    :catch_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/event/ErrorEvent;

    invoke-direct {v1}, Lwang/switchy/hin2n/event/ErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public native stopEdge()V
.end method
