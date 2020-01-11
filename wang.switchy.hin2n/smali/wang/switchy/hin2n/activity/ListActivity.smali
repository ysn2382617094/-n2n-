.class public Lwang/switchy/hin2n/activity/ListActivity;
.super Lwang/switchy/hin2n/activity/BaseActivity;
.source "ListActivity.java"


# static fields
.field private static final REQUECT_CODE_VPN:I = 0x2


# instance fields
.field private mHin2nEdit:Landroid/content/SharedPreferences$Editor;

.field private mHin2nSp:Landroid/content/SharedPreferences;

.field private mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

.field private mSettingItemAdapter:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

.field private mSettingItemEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lwang/switchy/hin2n/entity/SettingItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

.field private mTargetSettingPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 48
    iget-object p0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lwang/switchy/hin2n/activity/ListActivity;I)I
    .locals 0

    .line 48
    iput p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mTargetSettingPosition:I

    return p1
.end method

.method static synthetic access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    return-object p0
.end method

.method static synthetic access$302(Lwang/switchy/hin2n/activity/ListActivity;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;
    .locals 0

    .line 48
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    return-object p1
.end method

.method static synthetic access$400(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 48
    iget-object p0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$500(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/adapter/SettingItemAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemAdapter:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    return-object p0
.end method


# virtual methods
.method protected createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
    .locals 4

    .line 63
    new-instance v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f0d0082

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lwang/switchy/hin2n/template/CommonTitleTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    new-instance v3, Lwang/switchy/hin2n/activity/ListActivity$1;

    invoke-direct {v3, p0}, Lwang/switchy/hin2n/activity/ListActivity$1;-><init>(Lwang/switchy/hin2n/activity/ListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    new-instance v2, Lwang/switchy/hin2n/activity/ListActivity$2;

    invoke-direct {v2, p0}, Lwang/switchy/hin2n/activity/ListActivity$2;-><init>(Lwang/switchy/hin2n/activity/ListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected doOnCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "Hin2n"

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lwang/switchy/hin2n/activity/ListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    .line 94
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f09007c

    .line 96
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    .line 100
    new-instance p1, Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemAdapter:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    .line 102
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    new-instance v0, Lwang/switchy/hin2n/activity/ListActivity$3;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/ListActivity$3;-><init>(Lwang/switchy/hin2n/activity/ListActivity;)V

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    new-instance p1, Lwang/switchy/hin2n/activity/ListActivity$4;

    invoke-direct {p1, p0}, Lwang/switchy/hin2n/activity/ListActivity$4;-><init>(Lwang/switchy/hin2n/activity/ListActivity;)V

    .line 218
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/baoyz/swipemenulistview/SwipeMenuCreator;)V

    .line 220
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setSwipeDirection(I)V

    .line 221
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    new-instance v0, Lwang/switchy/hin2n/activity/ListActivity$5;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/ListActivity$5;-><init>(Lwang/switchy/hin2n/activity/ListActivity;)V

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V

    .line 308
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingsListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemAdapter:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 349
    invoke-super {p0, p1, p2, p3}, Lwang/switchy/hin2n/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 352
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    iget p2, p0, Lwang/switchy/hin2n/activity/ListActivity;->mTargetSettingPosition:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwang/switchy/hin2n/entity/SettingItemEntity;

    .line 354
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object p2

    invoke-virtual {p2}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object p2

    .line 355
    invoke-virtual {p1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 357
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lwang/switchy/hin2n/service/N2NService;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 360
    new-instance v0, Lwang/switchy/hin2n/model/N2NSettingInfo;

    invoke-direct {v0, p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;-><init>(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V

    const-string p1, "n2nSettingInfo"

    .line 361
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "Setting"

    .line 362
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, p2}, Lwang/switchy/hin2n/activity/ListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 375
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onDestroy()V

    .line 377
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
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

    .line 393
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mContext:Landroid/app/Activity;

    const-string v0, "~_~Error~_~"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 313
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onResume()V

    .line 315
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 320
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 322
    new-instance v3, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lwang/switchy/hin2n/entity/SettingItemEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 325
    new-instance v4, Lwang/switchy/hin2n/activity/ListActivity$6;

    invoke-direct {v4, p0, v3}, Lwang/switchy/hin2n/activity/ListActivity$6;-><init>(Lwang/switchy/hin2n/activity/ListActivity;Lwang/switchy/hin2n/entity/SettingItemEntity;)V

    invoke-virtual {v3, v4}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setOnMoreBtnClickListener(Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;)V

    .line 336
    iget-object v4, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "current_setting_id"

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 340
    iget-object v2, p0, Lwang/switchy/hin2n/activity/ListActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity;->mSettingItemAdapter:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    invoke-virtual {v0}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStartEvent(Lwang/switchy/hin2n/event/StartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onStopEvent(Lwang/switchy/hin2n/event/StopEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method
