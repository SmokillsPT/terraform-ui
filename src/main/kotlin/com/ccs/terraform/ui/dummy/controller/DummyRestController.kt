package com.ccs.terraform.ui.dummy.controller

import com.ccs.terraform.ui.dummy.model.Dummy
import com.ccs.terraform.ui.dummy.service.DummyService
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/dummy")
class DummyRestController(private val dummyService: DummyService) {

    @GetMapping(produces = [MediaType.APPLICATION_JSON_VALUE])
    fun getDummy(): ResponseEntity<Dummy> {
        return ResponseEntity.ok(dummyService.getDummy())
    }

    @PostMapping(consumes = [MediaType.APPLICATION_JSON_VALUE], produces = [MediaType.APPLICATION_JSON_VALUE])
    fun createDummy(@RequestBody dummy: Dummy): ResponseEntity<Dummy> {
        return ResponseEntity.ok(dummyService.saveDummy(dummy))
    }

    @PutMapping(consumes = [MediaType.APPLICATION_JSON_VALUE], produces = [MediaType.APPLICATION_JSON_VALUE])
    fun updateDummy(@RequestBody dummy: Dummy): ResponseEntity<Dummy> {
        return ResponseEntity.ok(dummyService.saveDummy(dummy))
    }

    @DeleteMapping(produces = [MediaType.APPLICATION_JSON_VALUE])
    fun deleteDummy(): ResponseEntity<Map<String, Any>> {
        val defaultDummy = dummyService.resetDummy()
        return ResponseEntity.ok(mapOf(
            "message" to "Dummy reset to default successfully",
            "dummy" to defaultDummy
        ))
    }
}
