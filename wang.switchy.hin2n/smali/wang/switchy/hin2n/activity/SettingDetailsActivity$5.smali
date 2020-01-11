.class Lwang/switchy/hin2n/activity/SettingDetailsActivity$5;
.super Ljava/lang/Object;
.source "SettingDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/SettingDetailsActivity;->doOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$5;->this$0:Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
