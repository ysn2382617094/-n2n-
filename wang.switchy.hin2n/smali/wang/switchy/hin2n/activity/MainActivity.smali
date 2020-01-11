.class public Lwang/switchy/hin2n/activity/MainActivity;
.super Lwang/switchy/hin2n/activity/BaseActivity;
.source "MainActivity.java"


# static fields
.field private static final REQUECT_CODE_SDCARD:I = 0x1

.field private static final REQUECT_CODE_VPN:I = 0x2


# instance fields
.field private mActionBarDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mConnectBtn:Landroid/widget/ImageView;

.field private mCurrentSettingInfo:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

.field private mCurrentSettingItem:Landroid/widget/RelativeLayout;

.field private mCurrentSettingName:Landroid/widget/TextView;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mLeftMenu:Landroid/widget/LinearLayout;

.field private mSupernodeDisconnectNote:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mLeftMenu:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$200(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lwang/switchy/hin2n/activity/MainActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/MainActivity;->doOnClickShareItem()V

    return-void
.end method

.method private doOnClickShareItem()V
    .locals 4

    .line 273
    new-instance v0, Lcom/umeng/socialize/media/UMWeb;

    const-string v1, "https://github.com/switch-iot/hin2n/blob/master/README.md"

    invoke-direct {v0, v1}, Lcom/umeng/socialize/media/UMWeb;-><init>(Ljava/lang/String;)V

    const-string v1, "Hin2n"

    .line 274
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMWeb;->setTitle(Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    const v2, 0x7f0c0003

    invoke-direct {v1, p0, v2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMWeb;->setThumb(Lcom/umeng/socialize/media/UMImage;)V

    const-string v1, "N2N is a VPN project that supports p2p."

    .line 276
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMWeb;->setDescription(Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/umeng/socialize/ShareAction;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/ShareAction;-><init>(Landroid/app/Activity;)V

    .line 279
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/ShareAction;->withMedia(Lcom/umeng/socialize/media/UMWeb;)Lcom/umeng/socialize/ShareAction;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 280
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/ShareAction;->setDisplayList([Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$11;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$11;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/ShareAction;->setCallback(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/ShareAction;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/umeng/socialize/ShareAction;->open()V

    return-void
.end method

.method private initLeftMenu()V
    .locals 2

    const v0, 0x7f09010a

    .line 186
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    invoke-static {p0}, Lwang/switchy/hin2n/tool/N2nTools;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900ac

    .line 189
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 190
    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$6;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$6;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900a4

    .line 228
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 229
    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$7;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$7;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a8

    .line 241
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 242
    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$8;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$8;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a3

    .line 251
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 252
    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$9;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$9;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a0

    .line 259
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 260
    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$10;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$10;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public ShowRequestPermissionRationale()V
    .locals 2
    .annotation build Lcom/zhy/m/permission/ShowRequestPermissionRationale;
        value = 0x1
    .end annotation

    const-string v0, "ShowRequestPermissionRationale"

    const/4 v1, 0x0

    .line 498
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "ShowRequestPermissionRationale"

    .line 499
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    .line 504
    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "I need permission!"

    .line 506
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lwang/switchy/hin2n/activity/MainActivity$12;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/MainActivity$12;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    .line 507
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method protected createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
    .locals 4

    .line 71
    new-instance v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const v1, 0x7f0d0020

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lwang/switchy/hin2n/template/CommonTitleTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    new-instance v3, Lwang/switchy/hin2n/activity/MainActivity$1;

    invoke-direct {v3, p0}, Lwang/switchy/hin2n/activity/MainActivity$1;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    new-instance v2, Lwang/switchy/hin2n/activity/MainActivity$2;

    invoke-direct {v2, p0}, Lwang/switchy/hin2n/activity/MainActivity$2;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected doOnCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const p1, 0x7f090049

    .line 107
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 109
    new-instance p1, Lwang/switchy/hin2n/activity/MainActivity$3;

    iget-object v3, p0, Lwang/switchy/hin2n/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0c0003

    const v5, 0x7f0d0061

    const v6, 0x7f0d0024

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lwang/switchy/hin2n/activity/MainActivity$3;-><init>(Lwang/switchy/hin2n/activity/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mActionBarDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 123
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mActionBarDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const p1, 0x7f090078

    .line 125
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mLeftMenu:Landroid/widget/LinearLayout;

    const p1, 0x7f09006a

    .line 127
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    .line 129
    sget-object p1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const v0, 0x7f0c0008

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_1
    sget-object p1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {p1}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object p1

    .line 133
    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne p1, v1, :cond_2

    .line 134
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne p1, v1, :cond_3

    .line 136
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v0, 0x7f0c0009

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    new-instance v0, Lwang/switchy/hin2n/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/MainActivity$4;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010f

    .line 164
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    const p1, 0x7f0900a6

    .line 166
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingItem:Landroid/widget/RelativeLayout;

    .line 167
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingItem:Landroid/widget/RelativeLayout;

    new-instance v0, Lwang/switchy/hin2n/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/MainActivity$5;-><init>(Lwang/switchy/hin2n/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010c

    .line 174
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingName:Landroid/widget/TextView;

    .line 175
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingName:Landroid/widget/TextView;

    const v0, 0x7f0d005c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/MainActivity;->initLeftMenu()V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 3

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    :try_start_0
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 338
    invoke-super {p0, p1, p2, p3}, Lwang/switchy/hin2n/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 343
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lwang/switchy/hin2n/service/N2NService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 345
    new-instance p3, Lwang/switchy/hin2n/model/N2NSettingInfo;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingInfo:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-direct {p3, v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;-><init>(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V

    const-string v0, "n2nSettingInfo"

    .line 346
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "Setting"

    .line 347
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onConnectingEvent(Lwang/switchy/hin2n/event/ConnectingEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 425
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 392
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onDestroy()V

    .line 394
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onErrorEvent(Lwang/switchy/hin2n/event/ErrorEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 416
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v1, 0x7f0c0008

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mContext:Landroid/app/Activity;

    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 387
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 467
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 468
    invoke-super {p0, p1, p2, p3}, Lwang/switchy/hin2n/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 471
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 473
    aget v0, p3, p2

    if-eqz v0, :cond_0

    .line 474
    iget-object p2, p0, Lwang/switchy/hin2n/activity/MainActivity;->mContext:Landroid/app/Activity;

    const-string p3, "Permission Denied"

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/MainActivity;->doOnClickShareItem()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 355
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onResume()V

    const-string v0, "Hin2n"

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0, v0, v1}, Lwang/switchy/hin2n/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "current_setting_id"

    const-wide/16 v3, -0x1

    .line 358
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    .line 360
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v2

    invoke-virtual {v2}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    iput-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingInfo:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 361
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingInfo:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingName:Landroid/widget/TextView;

    iget-object v2, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingInfo:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mCurrentSettingName:Landroid/widget/TextView;

    const v2, 0x7f0d005c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    :goto_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const v2, 0x7f0c0008

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 372
    :cond_1
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {v0}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object v0

    .line 373
    sget-object v3, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne v0, v3, :cond_2

    .line 374
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 375
    :cond_2
    sget-object v3, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-ne v0, v3, :cond_3

    .line 376
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v2, 0x7f0c0009

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 379
    :cond_3
    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStartEvent(Lwang/switchy/hin2n/event/StartEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 402
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStopEvent(Lwang/switchy/hin2n/event/StopEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 409
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onSupernodeDisconnectEvent(Lwang/switchy/hin2n/event/SupernodeDisconnectEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 430
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mConnectBtn:Landroid/widget/ImageView;

    const v1, 0x7f0c0009

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mSupernodeDisconnectNote:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity;->mContext:Landroid/app/Activity;

    const v1, 0x7f0d0085

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public requestSdcardFailed()V
    .locals 2
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x1
    .end annotation

    const-string v0, "DENY ACCESS SDCARD!"

    const/4 v1, 0x0

    .line 492
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public requestSdcardSuccess()V
    .locals 2
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x1
    .end annotation

    const-string v0, "GRANT ACCESS SDCARD!"

    const/4 v1, 0x0

    .line 487
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
