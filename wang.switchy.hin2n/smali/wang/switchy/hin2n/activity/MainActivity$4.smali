.class Lwang/switchy/hin2n/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/MainActivity;->doOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/MainActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/MainActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 145
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/MainActivity;->access$200(Lwang/switchy/hin2n/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {v0}, Lwang/switchy/hin2n/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    iget-object p1, p1, Lwang/switchy/hin2n/activity/MainActivity;->mContext:Landroid/app/Activity;

    const-string v0, "no setting selected"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 150
    :cond_0
    sget-object p1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    if-nez p1, :cond_1

    sget-object p1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {p1}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object p1

    .line 151
    :goto_0
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    if-eqz v0, :cond_2

    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq p1, v0, :cond_2

    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq p1, v0, :cond_2

    .line 152
    sget-object p1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {p1}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    goto :goto_1

    .line 154
    :cond_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 156
    iget-object v1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-virtual {v1, p1, v0}, Lwang/switchy/hin2n/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 158
    :cond_3
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$4;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lwang/switchy/hin2n/activity/MainActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method
