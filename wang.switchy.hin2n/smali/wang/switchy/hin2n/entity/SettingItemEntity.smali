.class public Lwang/switchy/hin2n/entity/SettingItemEntity;
.super Ljava/lang/Object;
.source "SettingItemEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;
    }
.end annotation


# instance fields
.field private isSelected:Z

.field public mOnMoreBtnClickListener:Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;

.field private mSaveId:Ljava/lang/Long;

.field private mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSettingName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSaveId:Ljava/lang/Long;

    .line 15
    iput-boolean p3, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getSaveId()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSaveId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->isSelected:Z

    return v0
.end method

.method public setOnMoreBtnClickListener(Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mOnMoreBtnClickListener:Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;

    return-void
.end method

.method public setSaveId(Ljava/lang/Long;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSaveId:Ljava/lang/Long;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->isSelected:Z

    return-void
.end method

.method public setSettingName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lwang/switchy/hin2n/entity/SettingItemEntity;->mSettingName:Ljava/lang/String;

    return-void
.end method
