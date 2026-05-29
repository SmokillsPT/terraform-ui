package com.ccs.terraform.ui.dummy.service

import com.ccs.terraform.ui.dummy.model.Dummy
import com.ccs.terraform.ui.dummy.repository.DummyRepository
import org.springframework.stereotype.Service

@Service
class DummyService(private val dummyRepository: DummyRepository) {

    fun getDummy(): Dummy {
        return dummyRepository.getDummy()
    }

    fun saveDummy(newDummy: Dummy): Dummy {
        return dummyRepository.saveDummy(newDummy)
    }

    fun resetDummy(): Dummy {
        return dummyRepository.resetDummy()
    }
}
