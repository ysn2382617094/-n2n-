.class Lwang/switchy/hin2n/activity/MainActivity$5;
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

    .line 167
    iput-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$5;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    iget-object p1, p0, Lwang/switchy/hin2n/activity/MainActivity$5;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/MainActivity$5;->this$0:Lwang/switchy/hin2n/activity/MainActivity;

    const-class v2, Lwang/switchy/hin2n/activity/ListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
